- [1. Application configuration](#application-configuration)
  - [1.1. General installation instructions](#general-installation-instructions)
  - [1.2. Update obsolete versions (summer 2025)](#update-obsolete-versions-summer-2025)
  - [1.3. Application manifest](#application-manifest)
  - [1.4. Application-specific installation instructions](#application-specific-installation-instructions)
  - [1.5. Application-specific configuration instructions](#application-specific-configuration-instructions)
- [2. Windows configuration](#windows-configuration)
  - [2.1. Default Folders](#default-folders)
  - [2.2. Desktop](#desktop)
  - [2.3. Start Menu](#start-menu)
  - [2.4. File Explorer](#file-explorer)
  - [2.5. Taskbar](#taskbar)
  - [2.6. Widgets](#widgets)
  - [2.7. Apps](#apps)
  - [2.8. Keyboard](#keyboard)
  - [2.9. Search](#search)
  - [2.10. Microsoft Edge](#microsoft-edge)

# 1. Application configuration

## 1.1. General installation instructions

1.  Make sure you are logged in as the DatVisLabWest user. Installing as the LibITLabWest user will break some applications.
2.  You can find all of the installers in **Documents/Installers**. When installing:
    - Add the program to the Start Menu
    - Don't create a Desktop shortcut
    - Don't add the program to the Taskbar
3.  Some applications require changing the default installation parameters. Check the "Application-specific installation instructions" section to see if you need to make any changes.
4.  If an application automatically opens after installation, check the "Application-specific configuration instructions" section to see if you need to make any changes.
5.  Don't perform any auto-updates during installation.

## 1.2. Update obsolete versions (summer 2025)

The following applications were installed using obsolete installers (from 2023). They should be completely un-installed and re-installed:

1.  Anaconda Python
2.  Git for Windows
3.  R
4.  RStudio
5.  DB Browser for SQLite
6.  MobaXTerm

## 1.3. Application manifest

Where to find the most recent version of every application.

1.  Anaconda Python distribution: <https://www.anaconda.com/download/success>
    - Installer located under Distribution Installers → Windows → 64-Bit Graphical Installer
2.  Chrome: <https://www.google.com/chrome/>
3.  DB Browser for SQLite: <https://sqlitebrowser.org/dl/>
    - Choose the Standard installer for 64-bit Windows
4.  DejaVu fonts: <https://dejavu-fonts.github.io>
5.  Firefox: <https://www.mozilla.org/en-US/firefox/all/desktop-release/win64-msi/en-US/>
6.  Git for Windows: <https://github.com/git-for-windows/git/releases/latest>
    - Installer located under Assets → Git-*version-number*-64-bit.exe
7.  Julia: <https://apps.microsoft.com/store/detail/9NJNWW8PVKMN>
8.  Microsoft Office: <https://it.ucmerced.edu/software-list>
9.  Microsoft Powertoys: <https://apps.microsoft.com/store/detail/microsoft-powertoys/XP89DCGQ3K6VLD>
    - There is no local installer
10. MobaXTerm: <https://mobaxterm.mobatek.net/download-home-edition.html>
    - Choose the Installer edition
11. Notepad++: <https://notepad-plus-plus.org/downloads/>
12. R: <https://cran.r-project.org/bin/windows/base/>
13. RStudio: <https://posit.co/download/rstudio-desktop/>
14. uv: <https://docs.astral.sh/uv/getting-started/installation/>
    - There is no local installer

## 1.4. Application-specific installation instructions

### 1.4.1. Anaconda Python distribution

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

### 1.4.2. DB Browser for SQLite

1.  De-select the the option to create a Program Menu entry for "DB Browser (SQLCipher)".

### 1.4.3. DejaVu Fonts

1.  Open Settings → Personalization → Fonts
2.  Open **Documents/Installers/dejavu-fonts-ttf-\<version\>/ttf**. Select all of the font files and drag them into the "Drag and drop to install" pane in Settings.

### 1.4.4. Git for Windows

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

### 1.4.5. Julia

1.  The Julia installer will open the Microsoft Store. Click the "Get" button, then click "Open".
2.  Julia will open a console window and begin the installation process.
3.  After installing Julia, run the following commands in the Julia console window:
    ``` r
    using Pkg
    Pkg.add("IJulia")
    ```
4.  When the process is complete, you may close Julia

### 1.4.6. R and RStudio

1.  Install R, then RStudio
2.  Open RStudio. If the workstation has multiple versions of R available, RStudio will ask which one it should use. Select the most recent 64-bit version.
3.  A pop-up window will ask if you want to submit crash reports. Click "No"
4.  In the RStudio Console window, run the following command:
    ``` r
    install.packages("tidyverse")
    ```
5.  When the process is complete, you may close RStudio

### 1.4.7. uv

Open PowerShell and run the following command:

``` bash
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

## 1.5. Application-specific configuration instructions

After installing, make the following configuration changes.

### 1.5.1. Anaconda Navigator

1.  On first startup, Navigator will open a modal window titled "Sign in for AI Coding Help." Select "Do not show again" and close the window.
2.  Locate the Anaconda Toolbox block. Click the gear in the upper right corner. If "Remove application" is available as an option (i.e. not grayed out), select it.

### 1.5.2. Chrome

1.  Autofill and passwords → Payment methods
    - Disable everything
2.  Autofill and passwords → Addresses and more
    - Disable everything
3.  Privacy and Security → Ad Privacy
    - Disable everything

### 1.5.3. DB Browser for SQLite

1.  1\. Edit → Preferences → General
    - Font size: **10**
2.  Edit → Preferences → SQL
    - SQL editor font: **Consolas**
    - SQL editor font size: **12**

### 1.5.4. Firefox

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
14. Show the Bookmarks Toolbar

### 1.5.5. Jupyter Lab

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

### 1.5.6. Notepad ++

1.  Settings → Style Configurator → Font Style
    - Font name: **Consolas**
    - Font size: **12**
2.  Enable "Enable global font"
3.  Enable "Enable global font size"

### 1.5.7. PowerToys

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

### 1.5.8. RStudio

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

# 2. Windows configuration

## 2.1. Default Folders

1.  **Documents/Installers** (copied from model workstation)
2.  **Documents/windows-setup** (Derek will clone this from Github)
3.  **Desktop/Workshop** (empty folder)

## 2.2. Desktop

1.  Delete all Desktop shortcuts
2.  Set background to **Documents/Installers/earth_vir_2016_lrg.jpg** by right-clicking on the file and selecting "Set as desktop background".

## 2.3. Start Menu

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

## 2.4. File Explorer

1.  Pin **Users/DataVisLabWest** folder to Quick Access. Then navigate to **Users/DataVisLabWest** to configure the settings below.
2.  View
    - Select "List"
3.  Sort
    - Select "Type"
4.  Options → General
    - Disable "Show recently used files"
    - Disable "Show frequently used folders"
    - Disable "Show files from Office.com"
5.  Options → View
    - Enable "Show hidden files, folders, and drives"
    - Disable "Hide extensions for known file types"
    - After making changes, click **Apply to folders** button

## 2.5. Taskbar

1.  Remove Windows Store
2.  Remove Copilot
3.  Remove Edge
4.  Add Firefox

## 2.6. Widgets

1.  Settings → Personalization → Taskbar
    - Disable "Widgets"

## 2.7. Apps

1.  Settings → Apps → Default apps → Firefox
    - Next to "Make Firefox your default browser", click **Set default**

## 2.8. Keyboard

1.  Settings → Time & language → Language & region
    1.  Next to "English (United States)", click the **…** icon and select **Language Options**
    2.  Under "Keyboards", click **Add a keyboard** and select **United States-Dvorak**
2.  Settings → Time & language → Typing → Advanced keyboard settings
    1.  Select **Input language hot keys**
    2.  Select **Between input languages** and click **Change Key Sequence**
    3.  Set "Switch Input Language" to **Not Assigned**
    4.  Set "Switch Keyboard Layout" to **Not Assigned**
    5.  Click **OK**, then click **OK** again

## 2.9. Search

1.  Settings → Privacy & security → Search permissions
    - Under "More settings", disable "Show search highlights"

## 2.10. Microsoft Edge

### 2.10.1. Page Settings (gear icon on page)

- Disable "Show sponsored links"
- Disable "Show content"
- Disable "Show widgets"
- Disable "Show feed"

### 2.10.2. Settings (in Edge application menu)

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
