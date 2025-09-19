#!/usr/bin/env bash
set -euo pipefail

IMAGE="openlight-decomp-tools:latest"
DOCKERFILE="${DOCKERFILE:-docker/Dockerfile}"

die() { echo "Error: $*" >&2; exit 1; }

if ! command -v docker >/dev/null 2>&1; then
  die "Docker is not installed or not on PATH."
fi

file_mtime_epoch() {
  local f="$1"
  if [[ ! -e "$f" ]]; then die "Cannot find $f"; fi
  if stat --version >/dev/null 2>&1; then
    stat -c %Y "$f"
  else
    stat -f %m "$f"
  fi
}

date_to_epoch() {
  local ts="$1"

  if date -d "$ts" +%s >/dev/null 2>&1; then
    date -d "$ts" +%s
    return
  fi
  if command -v gdate >/dev/null 2>&1 && gdate -d "$ts" +%s >/dev/null 2>&1; then
    gdate -d "$ts" +%s
    return
  fi
  local ts_no_frac="${ts/Z/+0000}"
  ts_no_frac="${ts_no_frac/%+00:00/+0000}"
  ts_no_frac="$(echo "$ts_no_frac" | sed -E 's/([0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2})\.[0-9]+/\1/')"

  if date -j -f "%Y-%m-%dT%H:%M:%S%z" "$ts_no_frac" +%s >/dev/null 2>&1; then
    date -j -f "%Y-%m-%dT%H:%M:%S%z" "$ts_no_frac" +%s
    return
  fi

  echo ""
}

need_build=0
dockerfile_mtime="$(file_mtime_epoch "$DOCKERFILE")"

if ! docker image inspect "$IMAGE" >/dev/null 2>&1; then
  echo "Docker image '$IMAGE' not found. Building..."
  need_build=1
else
  img_created_raw="$(docker image inspect -f '{{.Created}}' "$IMAGE" || true)"
  img_created_epoch="$(date_to_epoch "$img_created_raw")"

  if [[ -z "$img_created_epoch" ]]; then
    echo "Warning: couldn't parse image creation time; skipping freshness check."
  else
    if (( dockerfile_mtime > img_created_epoch )); then
      echo "Dockerfile is newer than image; Building..."
      need_build=1
    fi
  fi
fi

if (( need_build == 1 )); then
  docker build -f docker/Dockerfile -t "$IMAGE" .
fi

if [[ $# -eq 0 ]]; then
  CMD=(bash)
else
  case "$1" in
    build)
      CMD=(make openlight_camera.apk)
      shift
      ;;
    clean)
      CMD=(make clean)
      shift
      ;;
    rebuild)
      CMD=(make clean openlight_camera.apk)
      shift
      ;;
    bash|shell)
      CMD=(bash)
      shift
      ;;
    *)
      CMD=("$@")
      set --
      ;;
  esac

  if [[ $# -gt 0 ]]; then
    CMD+=("$@")
  fi
fi

docker run -it --rm \
  -e UID="$(id -u)" \
  -e GID="$(id -g)" \
  -v "$PWD":/workspace \
  -w /workspace \
  "$IMAGE" \
  "${CMD[@]}"
