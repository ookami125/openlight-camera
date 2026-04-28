#!/bin/bash
set -euo pipefail

# Host UID/GID, usually passed with -e PUID="$(id -u)" -e PGID="$(id -g)"
APP_UID="${PUID:-1000}"
APP_GID="${PGID:-1000}"

USERNAME="${USERNAME:-appuser}"
GROUPNAME="${GROUPNAME:-appuser}"

# Create group if missing.
if ! getent group "${APP_GID}" >/dev/null 2>&1; then
    addgroup --gid "${APP_GID}" "${GROUPNAME}"
else
    GROUPNAME="$(getent group "${APP_GID}" | cut -d: -f1)"
fi

# Create user if missing.
if ! getent passwd "${APP_UID}" >/dev/null 2>&1; then
    adduser \
        --disabled-password \
        --gecos "" \
        --home "/home/${USERNAME}" \
        --ingroup "${GROUPNAME}" \
        --uid "${APP_UID}" \
        "${USERNAME}"
else
    USERNAME="$(getent passwd "${APP_UID}" | cut -d: -f1)"
fi

# Real repo must be bind-mounted here from docker run:
#   -v "$PWD:/repo:rw"
if [ ! -d /repo ]; then
    echo "ERROR: /repo does not exist. Mount your repo with: -v \"\$PWD:/repo:rw\"" >&2
    exit 1
fi

# Avoid mounting overlay onto /workspace or inside /repo.
# Also avoid using Docker's own overlay-backed root fs for upper/work.
mkdir -p /mnt/overlay-tmp
mount -t tmpfs tmpfs /mnt/overlay-tmp

mkdir -p \
    /mnt/overlay-tmp/upper \
    /mnt/overlay-tmp/work \
    /mnt/overlay-tmp/merged

# Let the build user write through the overlay.
chown -R "${APP_UID}:${APP_GID}" /mnt/overlay-tmp

mount -t overlay overlay \
    -o lowerdir=/repo,upperdir=/mnt/overlay-tmp/upper,workdir=/mnt/overlay-tmp/work \
    /mnt/overlay-tmp/merged

# Optional convenience symlink/path.
rm -rf /workspace
ln -s /mnt/overlay-tmp/merged /workspace

mkdir -p /repo/build
mkdir -p /workspace/build
mount --bind /repo/build /workspace/build

cd /workspace

# Force copy-up of .git into the overlay upper layer as root so appuser
# can create lock files and index entries without hitting a permission
# error on the lower-layer files owned by the host user.
chown -R "${APP_UID}:${APP_GID}" /workspace/.git

# Make the overlay view match the Git index:
# - staged changes remain visible
# - unstaged changes are hidden by copied-up index versions
# - untracked/ignored files are hidden by overlay whiteouts
gosu "${USERNAME}" git config --global --add safe.directory /workspace || true
gosu "${USERNAME}" git restore --worktree -- .
gosu "${USERNAME}" git clean -fd

# Execute the main command as the specified user from the overlay view.
exec gosu "${USERNAME}" "$@"