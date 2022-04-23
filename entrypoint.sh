#!/bin/bash
set -eu # Increase bash strictness

if [[ -n "${GITHUB_WORKSPACE}" ]]; then
  cd "${GITHUB_WORKSPACE}" || exit
fi

if [[ -n "${PYLINT}" ]]; then
  ./scripts/pylint.sh
fi
