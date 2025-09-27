#!/bin/bash
set -euo pipefail   # strict mode ON

echo "hello"
echo "before hello"

ec "nidd "   # ❌ Wrong command (should be echo)

echo "after Hello"
