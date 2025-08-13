# Adminisration_Linux_project
Comprehensive Linux Administration &amp; Embedded Systems Project — Features Bash scripting for automated user and file management, modular build automation with Makefiles and CMake, multi-process programming in C, and SSH integration between Windows and Linux

 1.Bash Scripting
- Created an automated **user management script** (`userdef`) that:
  - Creates new users and groups with custom UIDs and GIDs.
  - Assigns passwords without prompts.
  - Configures home directories, default shells, and group memberships.
- Developed a **file management and archiving script** that:
  - Creates and populates source/header files.
  - Archives and transfers them to another user’s home directory.
  - Automates extraction, ownership changes, and search operations.

 2. Build Systems — Makefiles & CMake
- Implemented a **modular cryptography project** (Caesar and XOR ciphers) using:
  - **Makefiles** for both static and dynamic library builds.
  - **CMake** for cross-platform build automation.
- Organized build outputs (`gen`, `libs`, `out`) and ensured clean build/clean removal targets.

3. Process Management & SSH Integration
- Configured **SSH** between a Windows host and a Linux VM for secure process control.
- Built a **multi-process task manager** in C that:
  - Spawns two worker processes.
  - Monitors CPU usage (`mpstat`) and active processes (`ps`) via `execv()`.

