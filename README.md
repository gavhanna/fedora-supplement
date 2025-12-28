# Fedora Supplement

This repository contains a set of scripts to automate the installation of software on a fresh Fedora Workstation installation.

## Usage

1.  Clone this repository:
    ```bash
    git clone <repository-url>
    cd fedora-supplement
    ```

2.  Review the package lists and scripts to ensure they meet your needs.
    -   `packages/dnf-packages.txt`: Base packages to be installed with DNF.

3.  Run the main installation script:
    ```bash
    chmod +x install.sh
    ./install.sh
    ```

The script will prompt for `sudo` password when necessary.
