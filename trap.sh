#!/bin/bash
set -euo pipefail

# Trap for any error (ERR)
trap 'echo "❌ Error occurred on line $LINENO. Stopping script safely..."; exit 1' ERR

echo "Step 1: Hello"     # ✅ runs
echo "Step 2: Before"    # ✅ runs
ec "Wrong command"       # ❌ error, script stops but trap will catch
ec "Wrong command"       # ❌ error, script stops but trap will catch
ec "Wrong command"       # ❌ error, script stops but trap will catch
ec "Wrong command"       # ❌ error, script stops but trap will catch
ec "Wrong command"       # ❌ error, script stops but trap will catch

echo "Step 3: After"     # 🚫 never runs
