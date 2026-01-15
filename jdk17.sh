#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
JDK_HOME="$ROOT_DIR/.jdk/jdk-17.0.17+10"

if [[ ! -x "$JDK_HOME/bin/java" ]]; then
  echo "JDK 17 not found at: $JDK_HOME" >&2
  echo "Expected to find: $JDK_HOME/bin/java" >&2
  exit 1
fi

export JAVA_HOME="$JDK_HOME"
export PATH="$JAVA_HOME/bin:$PATH"

echo "JAVA_HOME=$JAVA_HOME"
java -version
