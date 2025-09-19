#!/bin/bash

# Get the current user's UID and GID from the host (if passed via docker run -u)
# Or use the UID/GID defined in the Dockerfile if not explicitly passed
UID=${PUID:-1000} # Default to 1000 if PUID not set
GID=${PGID:-1000} # Default to 1000 if PGID not set
USERNAME=$(id -nu ${UID} 2>/dev/null || echo "appuser") # Get username or default
GROUPNAME=$(id -nu ${UID} 2>/dev/null || echo "appuser")

#useradd -u  -g  --create-home "$USERNAME"
addgroup --gid "$GID" "$GROUPNAME"
adduser \
    --disabled-password \
    --gecos "" \
    --home "/home/$USERNAME" \
    --ingroup "$GROUPNAME" \
    --no-create-home \
    --uid "$UID" \
    $USERNAME

# Execute the main command as the specified user
exec gosu ${USERNAME} "$@"