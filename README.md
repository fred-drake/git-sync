# Git-Sync

Simple app to sync git with a directory.

---
## Environment Variables
- GIT_REPO: Required.  The git repository to sync.
- GIT_BRANCH: The branch to sync.  Defaults to `master`.
- GIT_SUBDIR: The subdirectory to sync.  Defaults to `/`.
- GIT_SECONDS: The number of seconds between syncs.  Defaults to `180`.
