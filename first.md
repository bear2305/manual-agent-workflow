Here's the script, followed by a plain step-by-step guide.

Run `create_project.bat` in the folder where you want the project. It creates a `PROJECT` folder with all the subfolders and empty files. It never overwrites a file that already exists, so running it twice is safe.

## The idea in one paragraph

You own the files, testing and approvals. One AI acts as the **Master Manager**: it plans and writes tasks, but never holds knowledge that isn't saved in your files. The other AIs are **workers**, each with one job and no contact with each other. Any of them can be swapped for a different model (GPT, Claude, Gemini, local) because each is defined by a role file, not by the model. You move text between them by copy and paste.

## What the folders are for

| Folder | Purpose |
|---|---|
| `00_PROJECT_CONTROL` | The project's memory: architecture, current state, decisions, task list, handover instructions |
| `01_AGENT_ROLES` | One file per worker describing its job and limits |
| `02_MODEL_INDEPENDENCE` | The standard formats every worker uses, plus a table of which model fills which role |
| `03_RESEARCH` | Research reports |
| `04_TASKS` | Task files, moved between PENDING, ASSIGNED, SUBMITTED, APPROVED and REJECTED |
| `05_SOURCE_CODE` | The code, which only you integrate |
| `06_INSPECTION_REPORTS` | Code Inspector results |
| `07_TEST_REPORTS` / `08_ERROR_REPORTS` | Your test results and error logs |
| `09_RELEASES` | Approved builds |

I left out `MODEL_ADAPTER_SPEC.md` since it only matters for the automation you're not interested in.

## What to do, in order

1. **Run the script.**
2. **Fill in the Master Manager role.** Open `01_AGENT_ROLES\MASTER_MANAGER.md` and paste in the long "MASTER PROJECT MANAGER — OPERATING CHARTER" from your document.
3. **Fill in `WORKER_CONTRACT.md`.** Paste the "Standard worker contract" section (the input list and output list) from your document.
4. **Fill in `TASK_FORMAT.md` and `RESPONSE_FORMAT.md`.** Use the "Delegation protocol" list (task ID, objective, restrictions, acceptance criteria, and so on) for the task format. Use the contract's output list for the response format. If you'd like, I can write these two as fill-in templates.
5. **Fill in `RESEARCH_WORKER.md` and `CODE_INSPECTOR.md`.** Use the roles table in your document: what each does and must not do. Leave the other role files empty until you need them.
6. **Make `PROVIDER_REGISTRY.md` a small table.** Use the columns Role, Current model and Notes (for example, "small context window"). This is where you record which model fills which role.
7. **Start a new chat with any model you like.** Paste the contents of `MASTER_MANAGER.md` and tell it to begin the "Initial assignment" (feasibility study, architecture, roadmap, and so on).
8. **Save every document it produces into the matching folder.** For example, the architecture goes in `MASTER_ARCHITECTURE.md` and the research plan goes in `03_RESEARCH`.
9. **Review the architecture and approve it before any coding starts.**

## The loop you'll repeat

The Manager writes a task, and you paste it to a worker. You save the worker's output, then have the Code Inspector review it. You compile and test it yourself, and send any errors back to the Manager. Nothing counts as done until you approve it.

## Swapping a model

To replace any worker, or the Manager itself, start a fresh chat with the new model. Paste that role's file, `CURRENT_PROJECT_STATE.md` and the open task. That's all `MODEL_REPLACEMENT_PROTOCOL.md` needs to say.

Do you want me to write the contents of steps 3 and 4 next (the worker contract and the task and response templates)? Everything else depends on those.
