#!/bin/bash
set -e

echo "===== Merge Queue Validation ====="
echo ""

# Current working directory (full path)
echo "Working Directory:"
echo "  $(pwd)"
echo ""

# Current branch
BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo "Current Branch:"
echo "  ${BRANCH}"
echo ""

# Top 3 commits on this branch
TOTAL_COMMITS=$(git rev-list --count HEAD)
if [ "$TOTAL_COMMITS" -ge 3 ]; then
  COUNT=3
else
  COUNT=$TOTAL_COMMITS
fi

echo "Top ${COUNT} Commit(s):"
git log --oneline -n "$COUNT"
echo ""

echo "===== Validation Passed ====="
