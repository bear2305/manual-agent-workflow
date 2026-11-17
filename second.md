The prompt is ready as a file. It's the charter from your document with the model-independence rules and your folder names added, so it is one complete prompt.

I saved the prompt as `MASTER_MANAGER.md`. It is the file that goes in `PROJECT\01_AGENT_ROLES\`.

**How to use it:**
1. Run `create_project.bat`, then replace the empty `MASTER_MANAGER.md` in `01_AGENT_ROLES` with this file.
2. Open a new chat with whichever model you want as manager, and paste the whole file as your first message.
3. It will ask up to five questions, then start producing the project documents one at a time. Each one comes with the filename it belongs in.
4. Save each document into that file, then type **next** to get the following one.
5. When it reaches the architecture, read it carefully and approve it before anything gets coded.

**What I changed from your original charter:**
- **Model independence:** I added it as its own section, so the manager never writes instructions that only one provider can follow.
- **Folder names:** Your folder structure is built in, so the manager refers to your actual files.
- **One document at a time:** I added this rule, because without it most models dump everything in a single reply and you lose track again.
- **Handover habit:** The manager must produce an updated `CURRENT_PROJECT_STATE.md` at the end of each session. That is what lets you replace it later.

If you swap the manager model at any point, paste this file plus `CURRENT_PROJECT_STATE.md` into the new chat.
