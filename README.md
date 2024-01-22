# Ansible Playbook - Application Installer for KDE Ubuntu Jammy

### Notes
    - Be sure to give the scripts the correct execution permissions
        - chmod +x *.sh *.yaml
        - Not running this will result in failure

## Description of 01-ansible.sh
    - Update + Fully Upgrade + Autoremove leftover files on OS through BASH Konsole/Terminal
    - Reboot the OS
    - Check Python & PIP versions
    - Curl the Python installer for PIP and saves it to current working directory
    - Install PIP as current User
    - Using PIP installer, download Ansible & update it
    - Remove the PIP Package Installer file. Cleaner
    - Update + Fully Upgrade + Autoremove leftover files on OS through BASH Konsole/Terminal
    - Reboot OS (Need to Login manually again as your User after reboot)

## Description of 02-kde-software-install.yaml
    - This Ansible Playbook must be run manually
        - Change directory where you saved the installation scripts
    - Become root user on localhost
    - Ensure that the OS is Updated + Upgraded (Error Checking Enabled)
    - Install Software Packages (You can select your own here)
        - thunderbird
        - gimp
        - inkscape
        - keepassxc
        - filezilla
    - Run the last BASH reboot script
        - This will force a reboot again (Good to ensure installation of your new Software Packages)

## Description of 03-reboot.sh
    - This BASH script runs automatically
        - Be sure to give this script the correct execution permissions or it will not run

##
