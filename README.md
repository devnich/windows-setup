- [<span class="toc-section-number">1</span> Overview](#overview)
  - [<span class="toc-section-number">1.1</span> Location](#location)
  - [<span class="toc-section-number">1.2</span> Manifest](#manifest)
- [<span class="toc-section-number">2</span> Post-upgrade QA](#post-upgrade-qa)
  - [<span class="toc-section-number">2.1</span> Update scripts](#update-scripts)
  - [<span class="toc-section-number">2.2</span> Python](#python)
  - [<span class="toc-section-number">2.3</span> Julia](#julia)
  - [<span class="toc-section-number">2.4</span> R](#r)
  - [<span class="toc-section-number">2.5</span> <span class="todo TODO">TODO</span> SQL](#sql)
  - [<span class="toc-section-number">2.6</span> <span class="todo TODO">TODO</span> Git](#git)
  - [<span class="toc-section-number">2.7</span> Cleanup](#cleanup)
- [<span class="toc-section-number">3</span> Application configuration](#application-configuration)
  - [<span class="toc-section-number">3.1</span> General installation instructions](#general-installation-instructions)
  - [<span class="toc-section-number">3.2</span> Application manifest](#application-manifest)
  - [<span class="toc-section-number">3.3</span> Application-specific installation instructions](#application-specific-installation-instructions)
  - [<span class="toc-section-number">3.4</span> Application-specific configuration instructions](#application-specific-configuration-instructions)
- [<span class="toc-section-number">4</span> Windows configuration](#windows-configuration)
  - [<span class="toc-section-number">4.1</span> Default Folders](#default-folders)
  - [<span class="toc-section-number">4.2</span> Desktop](#desktop)
  - [<span class="toc-section-number">4.3</span> Start Menu](#start-menu)
  - [<span class="toc-section-number">4.4</span> File Explorer](#file-explorer)
  - [<span class="toc-section-number">4.5</span> Taskbar](#taskbar)
  - [<span class="toc-section-number">4.6</span> Widgets](#widgets)
  - [<span class="toc-section-number">4.7</span> Apps](#apps)
  - [<span class="toc-section-number">4.8</span> Keyboard](#keyboard)
  - [<span class="toc-section-number">4.9</span> Search](#search)
  - [<span class="toc-section-number">4.10</span> Microsoft Edge](#microsoft-edge)

# Overview

This repository contains documentation and test scripts for the KL 336 workstations.

## Location

1.  The canonical version lives here: <https://github.com/devnich/windows-setup>
2.  Each workstation should have its own copy here: **Documents/Installers/windows-setup**

## Manifest

1.  Testing scripts are in **windows-setup/scripts**
2.  Testing data are in **windows-setup/data**

# Post-upgrade QA

All scripts are located in **Documents/Installers/windows-setup/scripts**

## Update scripts

1.  Open the pinned GitBash app.
2.  Navigate to **Documents/Installers/windows-setup**
    ``` bash
    cd Documents/installers/windows-setup/
    ```
3.  Run
    ``` bash
    git pull
    ```

## Python

1.  Open the pinned Terminal app. This should open Windows PowerShell.
2.  Navigate to **Documents/Installers/windows-setup/scripts**
    ``` bash
    cd .\Documents\Installers\windows-setup\scripts\
    ```
3.  Test in terminal
    - Run
      ``` bash
      python labtest.py
      ```
4.  Test in Jupyter Lab
    - Run
      ``` bash
      jupyter lab
      ```
    - Jupyter Lab should open in the browser
    - Open "labtest_python.ipynb". In the **Kernel** menu, select "Restart Kernel and Run All Cells".
    - "Completed Python notebook test"

## Julia

1.  Test in Jupyter Lab
    - In Jupyter Lab, open "labtest_julia.ipynb". In the **Kernel** menu, select "Restart Kernel and Run All Cells".
    - "Completed Julia notebook test"
2.  Shut down Jupyter Lab
    - Close all Jupyter Lab tabs without saving changes
    - Shut down Jupyter Lab
3.  Test in terminal
    - Run
      ``` bash
      julia labtest.jl
      ```
4.  Exit terminal

## R

1.  Open the pinned RStudio app
2.  Navigate to **Documents/Installers/windows-setup/scripts**
3.  Open "labtest.R"

## <span class="todo TODO">TODO</span> SQL

1.  DB Browser for SQLite

## <span class="todo TODO">TODO</span> Git

1.  GitBash

## Cleanup

1.  Remove credentials
    - Open Credential Manager
    - Select "Windows Credentials"
    - If a Github credential exists, remove it
2.  Reset repository (Git Bash)
    ``` bash
    git restore .
    ```

# Application configuration

## General installation instructions

1.  Make sure you are logged in as the DatVisLabWest user. Installing as the LibITLabWest user will break some applications.
2.  You can find all of the installers in **Documents/Installers**. When installing:
    - Add the program to the Start Menu
    - Don't create a Desktop shortcut
    - Don't add the program to the Taskbar
3.  Some applications require changing the default installation parameters. Check the "Application-specific installation instructions" section to see if you need to make any changes.
4.  If an application automatically opens after installation, check the "Application-specific configuration instructions" section to see if you need to make any changes.
5.  Don't perform any auto-updates during installation.

## Application manifest

Where to find the most recent version of every application.

1.  (Deprecated) Anaconda Python distribution: <https://www.anaconda.com/download/success>
    - Installer located under Distribution Installers → Windows → 64-Bit Graphical Installer
2.  Miniforge Python installer: <https://conda-forge.org/download/>
3.  Chrome: <https://www.google.com/chrome/>
4.  DB Browser for SQLite: <https://sqlitebrowser.org/dl/>
    - Choose the Standard installer for 64-bit Windows
5.  DejaVu fonts: <https://dejavu-fonts.github.io>
6.  Firefox: <https://www.mozilla.org/en-US/firefox/all/desktop-release/win64-msi/en-US/>
7.  Git for Windows: <https://github.com/git-for-windows/git/releases/latest>
    - Installer located under Assets → Git-*version-number*-64-bit.exe
8.  Julia: <https://apps.microsoft.com/store/detail/9NJNWW8PVKMN>
9.  Microsoft Office: <https://it.ucmerced.edu/software-list>
10. Microsoft Powertoys: <https://apps.microsoft.com/store/detail/microsoft-powertoys/XP89DCGQ3K6VLD>
    - There is no local installer
11. MobaXTerm: <https://mobaxterm.mobatek.net/download-home-edition.html>
    - Choose the Installer edition
12. Notepad++: <https://notepad-plus-plus.org/downloads/>
13. R: <https://cran.r-project.org/bin/windows/base/>
14. RStudio: <https://posit.co/download/rstudio-desktop/>
15. (On hold) uv: <https://docs.astral.sh/uv/getting-started/installation/>
    - There is no local installer

## Application-specific installation instructions

### Anaconda Python distribution

1.  Uninstall previous version
2.  Delete Start Menu items for previous version.
    - Navigate to **DataVisLabWest/AppData/Roaming/Microsoft/Windows/Start Menu/Programs**
    - Delete the "Anaconda" folder
3.  Install for single user ("Just Me" option)
4.  Select "Create shortcuts" (this should be checked by default)
5.  When setup in complete, de-select "Launch Anaconda Navigator" and "Welcome to Anaconda" and click "Finish"
6.  Open Anaconda PowerShell Prompt and run the following command:
    ``` bash
    conda create -n lab --clone base
    ```
7.  When the process is complete (it will take several minutes), you may close PowerShell

### Miniforge Python

1.  Install info:
    - Carpentry install instructions: <https://www.tim-dennis.com/2026-05-11-uc-lc/>
    - Complete install instructions: <https://github.com/conda-forge/miniforge>
    - PowerShell permissions: <https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies>
2.  Do not add Miniforge to the PATH
3.  By default, conda is only available from the Miniforge Prompt. To make it available from other terminals (including PowerShell), open Miniforge Prompt and run:
    ``` bash
    conda init
    ```

    This will create (or update) the profile.ps1 file in DataVisLabWest/Documents/WindowsPowerShell/
4.  By default, the lab computers will not allow execution of PowerShell scripts, including the profile contained in profile.ps1 . To allow local script execution, open PowerShell and run:
    ``` bash
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
    ```

    Conda should be available when you restart PowerShell.
5.  Clone <https://github.com/devnich/windows-setup> to DataVisLabWest/Documents/Installers/
6.  Create a new environment for Carpentry workshops
    ``` bash
    conda env create -f .\Documents\Installers\windows-setup\config\carpentries_environment.yml
    ```
7.  Configure Conda to auto-activate the carpentry environment
    ``` bash
    conda config --set default_activation_env carpentry
    conda config --set auto_activate True
    ```

    Note that the configuration changes only work in PowerShell. The Miniforge Prompt will continue to start with the (base) environment.

### DB Browser for SQLite

1.  De-select the the option to create a Program Menu entry for "DB Browser (SQLCipher)".

### DejaVu Fonts

1.  Open Settings → Personalization → Fonts
2.  Open **Documents/Installers/dejavu-fonts-ttf-\<version\>/ttf**. Select all of the font files and drag them into the "Drag and drop to install" pane in Settings.

### Git for Windows

1.  Run the installer. Click **Next** four times (two times if you've previously installed Git). You don't need to change anything in the Information, Location, Components, or Start Menu screens.
2.  For each configuration screen, select the appropriate option and click **Next**:
    1.  Choosing the default editor used by git: select **Use the Nano editor by default** from the dropdown menu (you will need to scroll up to find it)
    2.  Adjusting the name of the initial branch in new repositories: select **Let Git decide**
    3.  Adjusting your PATH environment: select **Git from the command line and also from 3rd-party software** (if you don't do this Git Bash will not work properly, requiring you to remove the Git Bash installation, re-run the installer and to select the "Git from the command line and also from 3rd-party software" option.)
    4.  Choosing the SSH executable: select **Use bundled OpenSSH**
    5.  Choosing HTTPS transport backend: select **Use the native Windows Secure Channel Library**
    6.  Configuring the line ending conversion: select **Checkout Windows-style, commit Unix-style line endings**
    7.  Configuring the terminal emulator to use with GitBash: select **Use Windows' default console window**
    8.  Choose the default behavior of \`git pull\`: select **Default (fast-forward or merge)**
    9.  Choose a credential helper: select **Git Credential Manager**
    10. Configuring extra options: check the box for **Enable file system caching**
3.  Click **Install**
4.  Click on **Finish** or **Next**

### Julia

1.  The Julia installer will open the Microsoft Store. Click the "Get" button, then click "Open".
2.  Julia will open a console window and begin the installation process.
3.  After installing Julia, run the following commands in the Julia console window:
    ``` r
    using Pkg
    Pkg.add("IJulia")
    ```
4.  When the process is complete, you may close Julia

### R and RStudio

1.  Install R, then RStudio
2.  Open RStudio. If the workstation has multiple versions of R available, RStudio will ask which one it should use. Select the most recent 64-bit version.
3.  A pop-up window will ask if you want to submit crash reports. Click "No"
4.  In the RStudio Console window, run the following command:
    ``` r
    install.packages("tidyverse")
    ```
5.  When the process is complete, you may close RStudio

### uv

Open PowerShell and run the following command:

``` bash
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

## Application-specific configuration instructions

After installing, make the following configuration changes.

### Anaconda Navigator

1.  On first startup, Navigator will open a modal window titled "Sign in for AI Coding Help." Select "Do not show again" and close the window.
2.  Locate the Anaconda Toolbox block. Click the gear in the upper right corner. If "Remove application" is available as an option (i.e. not grayed out), select it.

### Chrome

1.  Autofill and passwords → Payment methods
    - Disable everything
2.  Autofill and passwords → Addresses and more
    - Disable everything
3.  Privacy and Security → Ad Privacy
    - Disable everything

### DB Browser for SQLite

1.  1\. Edit → Preferences → General
    - Font size: **10**
2.  Edit → Preferences → SQL
    - SQL editor font: **Consolas**
    - SQL editor font size: **12**

### Firefox

1.  Create a folder on the **Desktop** called **Workshop** if it doesn't already exist.
2.  General → Tabs
    - Disable "Use AI to suggest tabs and a name for tabs groups"
3.  General → Files and Applications → Downloads
    - Select the **Workshop** folder on the Desktop
4.  General → Browsing
    - Disable "Recommend extensions as you browse"
    - Disable "Recommend features as you browse"
5.  Home
    - Home page and new windows: Select **Custom URLs** and paste <https://libguides.ucmerced.edu/software-carpentry> into the text box
    - New tabs: **Blank page**
6.  Home → Firefox Home Content
    - Disable everything except "Web Search"
7.  Search → Search suggestions
    - Disable "Show trending search suggestions"
8.  Search → Address bar
    - Disable "Suggestions from Firefox"
    - Disable "Suggestions from sponsors"
9.  Privacy & Security → Cookies and Site Data
    - Enable " Delete cookies and site data when Firefox is closed"
10. Privacy & Security → Passwords
    - Disable everything
11. Privacy & Security → Autofill
    - Disable everything
12. Privacy & Security → Firefox Data Collection
    - Disable everything
13. Add the following bookmarks to the Bookmarks Toolbar:
    - Software Carpentry: <https://libguides.ucmerced.edu/software-carpentry>
    - Box: <https://ucmerced.account.box.com/login>
    - OneDrive: <https://merced-my.sharepoint.com>
14. Bookmarks → Show Bookmarks Toolbar

### Jupyter Lab

1.  To run Jupyter Lab, open Anaconda PowerShell Prompt and run the following command:
    ``` bash
    jupyter lab
    ```
2.  Select Firefox as the default browser
3.  All Jupyter Lab configuration settings are under Settings → Settings Editor
    1.  Code Mirror
        - Enable "Auto Closing Brackets"
        - Font Size: **14**
    2.  Notifications
        - Disable "Check for JupyterLab updates"
        - Fetch official Jupyter news: **false**

### Notepad ++

1.  Settings → Style Configurator → Font Style
    - Font name: **Consolas**
    - Font size: **12**
2.  Enable "Enable global font"
3.  Enable "Enable global font size"

### PowerToys

1.  General → Version & updates
    - Disable everything
2.  General → Appearance & behavior
    - Disable "Run at Startup"
3.  Input/Output → Keyboard Manager
    - Enable "Keyboard Manager"
    - Click "Remap a key"
    - Click "Add key remapping"
      - Select: **Caps Lock**
      - To Send: **Ctrl (Left)**
    - Click "OK", then click "Continue anyway"

### RStudio

All RStudio configuration settings are under Tools → Global Options. When you have finished changing the configuration settings, click "Apply" and then click "OK".

1.  General
    - Default working directory: **C:/Users/DataVisLabWest**
    - Disable "Restore most recently opened project at startup"
    - Disable "Restore previously opened source documents at startup"
    - Disable "Restore .RData into workspace at startup"
    - Save workspace to .RData on exit: **Never**
    - Disable "Automatically notify me of updates to RStudio"
2.  Code → Editing
    - Enable "Insert matching parens"
    - Keybindings: **Emacs**
3.  Code → Display
    - Enable "Allow scroll past end of document"
    - Enable "Use rainbow parentheses"
4.  Appearance
    - Editor font: **Consolas**
    - Editor font size: **12**
5.  Pane layout
    - Set the upper left pane to Console
    - Set the upper right pane to Source

# Windows configuration

## Default Folders

1.  **Documents/Installers** (copied from model workstation)
2.  **Documents/windows-setup** (Derek will clone this from Github)
3.  **Desktop/Workshop** (empty folder)

## Desktop

1.  Delete all Desktop shortcuts
2.  Set background to **Documents/Installers/earth_vir_2016_lrg.jpg** by right-clicking on the file and selecting "Set as desktop background".

## Start Menu

1.  Pin the following applications (and unpin all others)
    - Anaconda PowerShell Prompt
    - DB Browser for SQLite
    - Firefox
    - Git Bash
    - Julia
    - MobaXTerm
    - Notepad++
    - RStudio
    - File Explorer
    - Settings
2.  Settings → Personalization → Start
    - Disable all settings

## File Explorer

1.  Pin **Users/DataVisLabWest** folder to Quick Access. Then navigate to **Users/DataVisLabWest** to configure the settings below.
2.  View
    - Select "List"
3.  Sort
    - Select "Name"
4.  Options → General
    - Disable "Show recently used files"
    - Disable "Show frequently used folders"
    - Disable "Show files from Office.com"
5.  Options → View
    - Enable "Show hidden files, folders, and drives"
    - Disable "Hide extensions for known file types"
    - After making changes, click **Apply to folders** button

## Taskbar

1.  Remove Windows Store
2.  Remove Copilot
3.  Remove Edge
4.  Add Firefox

## Widgets

1.  Settings → Personalization → Taskbar
    - Disable "Widgets"

## Apps

1.  Settings → Apps → Default apps → Firefox
    - Next to "Make Firefox your default browser", click **Set default**
2.  Settings → Apps → Startup
    - Disable "Microsoft Edge"

## Keyboard

1.  Settings → Time & language → Language & region
    1.  Next to "English (United States)", click the **…** icon and select **Language Options**
    2.  Under "Keyboards", click **Add a keyboard** and select **United States-Dvorak**
2.  Settings → Time & language → Typing → Advanced keyboard settings
    1.  Select **Input language hot keys**
    2.  Select **Between input languages** and click **Change Key Sequence**
    3.  Set "Switch Input Language" to **Not Assigned**
    4.  Set "Switch Keyboard Layout" to **Not Assigned**
    5.  Click **OK**, then click **OK** again

## Search

1.  Settings → Privacy & security → Search permissions
    - Under "More settings", disable "Show search highlights"

## Microsoft Edge

### Page Settings (gear icon on page)

- Disable "Show sponsored links"
- Disable "Show content"
- Disable "Show widgets"
- Disable "Show feed"

### Settings (in Edge application menu)

1.  Profiles
    - Disable "Earn Microsoft Rewards"
2.  Privacy, search, and services → Clear browsing data → Choose what to clear every time you close the browser
    - Enable all settings
3.  Privacy, search, and services → Privacy
    - Disable all settings
4.  Privacy, search, and services → Search and connected experiences
    - Disable all settings except "Use a web service to help resolve navigation errors"
5.  Appearance → Copilot and sidebar → Copilot
    - Disable "Show Copilot button on the toolbar"
6.  Languages → Writing assistance
    - Disable all settings
