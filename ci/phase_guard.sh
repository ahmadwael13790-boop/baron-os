#!/usr/bin/env bash
set -e

PHASE_FILE="docs/phase_intent/PHASE_0.md"

if [ ! -f "$PHASE_FILE" ]; then
  echo "❌ Missing Phase Intent: $PHASE_FILE"
  exit 1
fi

echo "✅ Phase Intent present: $PHASE_FILE"
