#!/usr/bin/env bash
set -euo pipefail

IMAGE="openlight-decomp-tools:latest"
DOCKERFILE="${DOCKERFILE:-docker/Dockerfile}"
STAMP_FILE=".docker-build-stamp"

die() { echo "Error: $*" >&2; exit 1; }

if ! command -v docker >/dev/null 2>&1; then
  die "Docker is not installed or not on PATH."
fi

need_build=0

if ! docker image inspect "$IMAGE" >/dev/null 2>&1; then
  echo "Docker image '$IMAGE' not found. Building..."
  need_build=1
elif [[ ! -f "$STAMP_FILE" ]] || [[ "$DOCKERFILE" -nt "$STAMP_FILE" ]]; then
  echo "Dockerfile is newer than last build. Rebuilding..."
  need_build=1
fi

if (( need_build == 1 )); then
  tmp_log="$(mktemp)"
  if ! docker build -f "$DOCKERFILE" -t "$IMAGE" . > "$tmp_log" 2>&1; then
    cat "$tmp_log"
    rm -f "$tmp_log"
    die "Docker build failed"
  fi
  rm -f "$tmp_log"
  touch "$STAMP_FILE"
  echo "Docker image built."
fi

INTERACTIVE=0

if [[ $# -eq 0 ]]; then
  CMD=(bash)
  INTERACTIVE=1
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
      INTERACTIVE=1
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

DOCKER_FLAGS=(--rm -e UID="$(id -u)" -e GID="$(id -g)" -v "$PWD":/workspace -w /workspace)
[[ $INTERACTIVE -eq 1 ]] && DOCKER_FLAGS+=(-it)

docker run "${DOCKER_FLAGS[@]}" "$IMAGE" "${CMD[@]}"
