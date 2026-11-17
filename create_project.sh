#!/usr/bin/env bash

# ============================================================
#  Creates the AI engineering project structure.
#  Folders and EMPTY files only. Existing files are never overwritten.
#  Run it from the folder where you want PROJECT to appear.
# ============================================================

ROOT="$(pwd)/PROJECT"

echo "Creating project in: $ROOT"
echo

mkd() {
  mkdir -p "$ROOT/$1"
  echo "[folder] $1"
}

mkf() {
  if [ ! -e "$ROOT/$1" ]; then
    : > "$ROOT/$1"
  fi
  echo "[file]   $1"
}

# ---------- Folders ----------
mkd "00_PROJECT_CONTROL"
mkd "01_AGENT_ROLES"
mkd "02_MODEL_INDEPENDENCE"
mkd "03_RESEARCH"
mkd "04_TASKS/PENDING"
mkd "04_TASKS/ASSIGNED"
mkd "04_TASKS/SUBMITTED"
mkd "04_TASKS/APPROVED"
mkd "04_TASKS/REJECTED"
mkd "05_SOURCE_CODE"
mkd "06_INSPECTION_REPORTS"
mkd "07_TEST_REPORTS"
mkd "08_ERROR_REPORTS"
mkd "09_RELEASES"

# ---------- 00 Project control ----------
mkf "00_PROJECT_CONTROL/PROJECT_CHARTER.md"
mkf "00_PROJECT_CONTROL/MASTER_ARCHITECTURE.md"
mkf "00_PROJECT_CONTROL/CURRENT_PROJECT_STATE.md"
mkf "00_PROJECT_CONTROL/DECISION_REGISTER.md"
mkf "00_PROJECT_CONTROL/TASK_REGISTER.md"
mkf "00_PROJECT_CONTROL/AGENT_REGISTRY.md"
mkf "00_PROJECT_CONTROL/HANDOVER_PROTOCOL.md"

# ---------- 01 Agent roles ----------
mkf "01_AGENT_ROLES/MASTER_MANAGER.md"
mkf "01_AGENT_ROLES/RESEARCH_WORKER.md"
mkf "01_AGENT_ROLES/CODE_INSPECTOR.md"
mkf "01_AGENT_ROLES/VIRTUALIZATION_WORKER.md"
mkf "01_AGENT_ROLES/ANDROID_WORKER.md"
mkf "01_AGENT_ROLES/APPLICATION_WORKER.md"
mkf "01_AGENT_ROLES/DEBUGGING_WORKER.md"

# ---------- 02 Model independence ----------
mkf "02_MODEL_INDEPENDENCE/WORKER_CONTRACT.md"
mkf "02_MODEL_INDEPENDENCE/TASK_FORMAT.md"
mkf "02_MODEL_INDEPENDENCE/RESPONSE_FORMAT.md"
mkf "02_MODEL_INDEPENDENCE/PROVIDER_REGISTRY.md"
mkf "02_MODEL_INDEPENDENCE/MODEL_REPLACEMENT_PROTOCOL.md"

echo
echo "Done. Open the PROJECT folder."
