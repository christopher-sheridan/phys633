#!/bin/zsh

# Usage check
if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <input_pattern> <output.mp4> [fps]"
  echo "Example: $0 frame%03d.png movie.mp4 30"
  exit 1
fi

INPUT_PATTERN="$1"
OUTPUT="$2"
FPS="${3:-30}"   # default to 30 if not provided

ffmpeg -framerate "$FPS" -i "$INPUT_PATTERN" \
  -c:v libx264 -pix_fmt yuv420p "$OUTPUT"
