#!/usr/bin/env bash
set -euo pipefail

IMAGE="openlight-decomp-tools:latest"

die() { echo "Error: $*" >&2; exit 1; }

if ! command -v docker >/dev/null 2>&1; then
  die "Docker is not installed or not on PATH."
fi

if ! docker image inspect "$IMAGE" >/dev/null 2>&1; then
  echo "Docker image '$IMAGE' not found. Building..."
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
