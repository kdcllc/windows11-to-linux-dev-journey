# From Windows 11 to Linux: A Full Stack Developer's Journey

Welcome to the From Windows 11 to Linux: A Full Stack Developer's Journey repository! In this repository, we document the comprehensive journey of transitioning from Windows 11 to Linux as the primary development environment for a full stack developer. Whether you're new to Linux or an experienced user, this guide aims to provide a step-by-step account of the transition process, highlighting challenges, solutions, and best practices.

## Hire me

Please send [email](mailto:kingdavidconsulting@gmail.com) if you consider to **hire me**.

[![buymeacoffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/vyve0og)

## Give a Star! :star2

It supports the following authentication libraries
Table of Contents
-----------------

* [Introduction](#introduction)
* [Prerequisites](#prerequisites)
* [Development Tools](#development-tools)
  * [Install `git` for version control](#install-git)
  * [Install Vscode](#install-vscode)
  * [Install NodeJs](#install-nodejs)
  * [Backend](#backend)
  * [Databases](#databases)
* [Other Tools](#other-tools)
* [Contributing](#contributing)
* [License](#license)

Introduction
------------

After more than two decades of working within the confines of Windows, I've made the personal decision to break free from the clutches of "Big Brother" technologies that relentlessly invade our privacy. In this pursuit, I'm transitioning to Ubuntu Linux, which, in stark contrast to Windows and iOS, shines as a symbol of privacy-conscious computing. While the Windows and iOS ecosystems often engage in extensive data collection without clear user consent, Ubuntu's open-source ethos and community-driven development champion transparency and privacy.

Furthermore, in an era where other operating systems are rapidly integrating AI co-pilots, Ubuntu stands strong in its commitment to safeguarding user data. Unlike certain AI-driven features that raise privacy concerns in Windows and iOS, Ubuntu's community places a heavy emphasis on user consent, transparency, and data control. This solidifies Ubuntu's status as the ideal choice for those like me who cherish their privacy in this increasingly surveilled digital world.

As the ever-evolving landscape of software development beckons, I find myself embarking on a journey to explore new platforms and environments. This repository chronicles my transition from Windows 11 to Linux, not just as a mere shift in operating systems but as a quest to enhance productivity, streamline development workflows, and harness the unique advantages offered by the Linux ecosystem.

This table provides a comparison of various advantages and disadvantages between Ubuntu Linux and Windows for full-stack developers:

| Advantage / Disadvantage      | Ubuntu Linux                              | Windows                            |
|------------------------------|-------------------------------------------|------------------------------------|
| **Open Source Philosophy**    | ✓ Transparency and customization          | ✗ Proprietary, limited customization |
| **Privacy Control**           | ✓ Prioritizes user privacy                | ✗ Collects user data for marketing  |
| **Customization**             | ✓ Highly customizable environment        | ✗ Limited customization options     |
| **Package Management**        | ✓ Efficient package management (APT)      | ✗ Less streamlined package management|
| **AI and Machine Learning**   | ✓ Access to a wide range of AI libraries  | ✗ Requires additional setup         |
| **Docker and Containers**     | ✓ Seamless Docker integration              | ✗ Docker support, but not native    |
| **Community Support**         | ✓ Active and extensive community support  | ✗ Community support but smaller     |
| **Stability**                 | ✓ LTS releases offer stability            | ✗ Frequent updates, potential issues |
| **Server Compatibility**      | ✓ Ideal for server environments           | ✗ Primarily desktop-focused         |
| **Resource Usage**            | ✓ Requires fewer system resources         | ✗ Demands more system resources      |
| **Security**                  | ✓ Strong security features                | ✗ Frequent security vulnerabilities   |
| **Community-Driven Innovation**| ✓ Encourages innovation and collaboration | ✗ Less community-driven development  |
| **Cost-Effective**            | ✓ Free to use, no licensing costs         | ✗ Licensing costs for Windows       |
| **Cross-Platform Development**| ✓ Supports cross-platform development     | ✗ Primarily Windows-focused          |
| **Cloud Compatibility**       | ✓ Widely supported by major cloud providers | ✗ Azure integration, but limited    |
| **Container Orchestration**   | ✓ Seamless Kubernetes integration         | ✗ Kubernetes support, not native     |
| **DevOps Friendly**           | ✓ Compatible with DevOps tools            | ✗ Requires additional setup         |

**Unlocking Development Freedom with Ubuntu Linux**

Having embraced Ubuntu Linux for my development journey over the past six months, I've gained a profound understanding of how Microsoft's strategies can inadvertently lock developers into the Windows ecosystem. This realization became strikingly transparent when Microsoft recently announced the [discontinuation of support for Visual Studio for Mac](https://learn.microsoft.com/en-us/visualstudio/mac/what-happened-to-vs-for-mac?view=vsmac-2022). It underscores the inherent limitations that can arise when relying solely on proprietary tools and platforms. Ubuntu Linux, with its open-source ethos, has provided a refreshing alternative, offering greater flexibility, transparency, and the freedom to tailor my development environment without being tethered to a single vendor's agenda. It's a testament to the importance of choice and independence in the world of software development.

Prerequisites
-------------

Before taking the plunge into the world of Ubuntu Linux, it's essential to ensure you have a solid foundation in place. Here are the prerequisites and considerations based on my own experience:

## Technical Proficiency

1. **Operating System Knowledge**: A basic understanding of both Windows and Linux environments is crucial. Familiarize yourself with how both systems work and their fundamental differences.

2. **Programming Languages**: Proficiency in programming languages is essential. In my case, I've been working extensively with Microsoft technologies, including C#, VB.NET, JavaScript/TypeScript, HTML/CSS, and ASP.NET/ASP.NET Core. This background knowledge is valuable when transitioning to Linux.

3. **New Skill Development**: Keep in mind that learning doesn't stop. As I embarked on this journey, I was in the process of acquiring new skills, including GoLang, Python, and SPA frameworks like React/Angular/NextJs/PWA and Lit Element. These expanding skill sets enhance your adaptability in the Linux ecosystem.

## Ubuntu Installation Options

4. **Hardware Choice**: Decide whether you want to install or configure Ubuntu on your existing machine or opt for a new machine. Ubuntu offers a range of [certified desktops](https://ubuntu.com/certified/desktops?vendor=Dell&vendor_page=True&) that can simplify the installation process.

5. **Experimentation**: Before the actual transition, consider experimenting with Ubuntu installations on older machines. This hands-on experience will provide you with insights into the installation process and what to expect.

6. **Conversion Tutorials**: There are plenty of tutorials available that guide you through converting an existing Windows machine into a powerful Ubuntu development environment. Familiarize yourself with these resources to ease the transition.

7. **Resource Efficiency**: One of the significant advantages of Linux, including Ubuntu, is its resource efficiency. Unlike Windows, which tends to consume a lot of CPU and RAM over time, Linux operates more efficiently. This is particularly valuable for developers who need their machines to perform optimally for extended periods.

## Hardware Choice

8. **Laptop Selection**: Instead of converting an existing development machine, consider investing in a new laptop designed for development purposes. Personally, I chose the [Dell XPS 13 Plus (9320) Developer Edition](https://www.dell.com/en-us/shop/dell-laptops/xps-13-plus-developer-edition/spd/xps-13-9320-laptop/usexcucto9320rpl01), and I couldn't be happier with its performance. Your hardware selection can significantly impact your Ubuntu Linux experience.

With these prerequisites and considerations in mind, you'll be better prepared for a successful transition to Ubuntu Linux and a more efficient and tailored development environment.

Development Tools
-----------------

In the world of programming languages, compatibility is key. Each programming language must possess the ability to run seamlessly on different versions of compilers. This ensures that developers have the flexibility to work with various toolchains and environments, making their code accessible and adaptable.

Additionally, programming languages employ dependency resolution mechanisms similar to popular package managers like `npm`, `nuget`, or `pip`. These mechanisms play a pivotal role in handling references and creating executable environments. They enable developers to seamlessly integrate libraries, packages, and modules into their projects.

For instance, consider the scenario of running multiple versions of key runtime environments like Node.js, Python, or .NET Core on a single machine. This capability is crucial for developers who work on a diverse range of projects that may require different language versions or dependencies.

As a diligent developer, I always strive to set up my development environment in a way that supports the ability to run different versions of Node.js, Python or .NET Core on the same machine. This not only enhances flexibility but also ensures that I can tackle a wide array of projects without being limited by version constraints.

---

Feel free to modify this Markdown text as needed for your specific use case or presentation.

### Install and configuring `git`

Git is an essential part of a developer's toolkit. Linux seamlessly integrates with Git, making version control efficient and effective.

* Git: Install and configure Git for version control in your projects.

```bash
    # Install Git
    sudo apt install git-all
```

Add keys for github.com <https://github.com/settings/keys>

```bash
    # Configure SSH for GitHub or Dev.Azure.com repositories
    # Generate an SSH key (replace "email@domain.com" with your email)
    ssh-keygen -t ed25519 -C "email@domain.com"
    
    # Start the SSH agent
    eval "$(ssh-agent -s)"
    
    # Add your SSH key to the agent (replace "~/.ssh/id_ed25519.pub" with your actual key path)
    ssh-add ~/.ssh/id_ed25519

    cat ~/.ssh/id_ed25519.pub
    # For GitHub: https://github.com/settings/keys

```

Add Keys to Azure DevOps  https://dev.azure.com/your-organization/_usersSettings/keys

```bash
    
    ssh-keygen -C "email@domain.com"
 
    # Start the SSH agent
    eval "$(ssh-agent -s)"

    # Add your SSH key to the agent (replace "~/.ssh/devops.pub" with your actual key path)
    ssh-add ~/.ssh/devops

    # Now, add the SSH key to your GitHub or Dev.Azure.com account
    # You can do this by copying the SSH key from "~/.ssh/devops.pub" and adding it to your account settings.
    cat ~/.ssh/devops.pub
    # For Dev.Azure.com: https://dev.azure.com/your-organization/_usersSettings/keys
```

Follow these steps to install Git, configure SSH access with an Ed25519 key, and add the key to your GitHub or Dev.Azure.com account for secure and convenient repository access.

Setup default global user

```bash
    git config --global user.email "info@kingdavidconsulting.com"
    git config --global user.name "kdcllc"

    # The core.autocrlf=input setting is pretty crucial. It can break things you install over git (like rbenv).
    git config --global core.autocrlf input

```

Set folder based user

```bash
    git config user.email "@kingdavidconsulting.com"
    git config user.name "kdcllc"

```

### Install VScode

Once you've made the decision to transition away from the Windows ecosystem, selecting the right code editor becomes crucial. Having used VSCode for years, it was my natural choice when I moved to Ubuntu Linux.

#### Installing VSCode

1. To install VSCode, you can use the following command:

   ```bash
   sudo snap install code --classic
   ```

   This command installs the Visual Studio Code (VSCode) using Snap, a universal package manager in Ubuntu.

2. After the installation is complete, you can launch VSCode by searching for it in the application menu or using the following command:

   ```bash
   code

#### Installing VSCode Insiders Edition- staying on the Cutting Edge

If you prefer to stay at the forefront of software development and want to use the Insider version of VSCode, you can do so on Ubuntu Linux. I've been using the VSCode Insider version and rarely encountered issues after daily updates. To install the Insider version, you can follow these steps:

1. First, install the Insider version of VSCode using Snap:

   ```bash
   sudo snap install code-insiders --classic
   ```

2. Once the installation is complete, launch the Insider version by searching for it in the application menu or using the command:

   ```bash
   code-insiders
   ```

This setup allows you to enjoy the latest features and improvements in VSCode while working within the Ubuntu Linux environment.

### Install NodeJs

#### [Install `nvm`:](https://github.com/nvm-sh/nvm)

Make sure that the latest curl command is executed: https://github.com/nvm-sh/nvm

```bash
    # Download and install nvm from the official GitHub repository
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
   
    # Now add these lines to your ~/.bashrc, ~/.profile, or ~/.zshrc file to have it automatically sourced upon login: 
    # (you may have to add to more than one of the above files)
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

    # After installation, you might need to restart your terminal or run:
    # source ~/.bashrc   # If you are using bash
    # source ~/.zshrc    # If you are using zsh
    
    # Verify nvm installation by checking the version
    nvm --version
```

Automatically adding export to `~/.bashrc`

```bash

    echo 'export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> ~/.bashrc

    source ~/.bashrc

    nvm --version
```

#### Uninstall `nvm`

```bash
    # To uninstall nvm, you can simply remove its directory and associated files
    rm -rf ~/.nvm
    rm -rf ~/.npm
    # Additionally, remove the nvm lines from your shell profile (e.g., ~/.bashrc or ~/.zshrc)
    # Open your shell profile file in a text editor, and remove or comment out the nvm lines.
    
    # After editing the shell profile, you should restart your terminal or run:
    # source ~/.bashrc   # If you are using bash
    # source ~/.zshrc    # If you are using zsh
    
    # Verify that nvm is uninstalled
    nvm --version
```

#### Install Node.Js

```bash
    # install the latest release of node, do this
    nvm install node # "node" is an alias for the latest version

    # To install a specific version of node:
    nvm install 20 # or 16.3.0, 12.22.1, etc

    # And then in any new shell just use the installed version:
    nvm use node
```

#### Install DotNet Core

Initially, I attempted to install .Net Core from Microsoft package repository but I ran into issue with it.
Since, the desired outcome is flexibility and ability to run any version of the .Net Core I need at any time; then
manual installation is the best bet. 

Change the env variable `version` to the desired version.

```bash

export version=sdk-8.0.303-linux-x64

curl -o- https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/${version}-binaries

mkdir -p $HOME/dotnet && tar zxf dotnet-${version}.tar.gz -C $HOME/dotnet

# export DOTNET_ROOT=$HOME/dotnet
# export PATH=$PATH:$HOME/dotnet

echo "export DOTNET_ROOT=\$HOME/dotnet" >> ~/.bashrc && echo "export PATH=\$PATH:\$HOME/dotnet" >> ~/.bashrc && echo "export DOTNET_CLI_TELEMETRY_OPTOUT=true" >> ~/.bashrc

source ~/.bashrc

```

https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#register-the-microsoft-package-repository

1. Add Microsoft Repository

2. Install package

```bash
    sudo apt install dotnet-sdk-7.0

    sudo apt-get remove dotnet-sdk-7.0
```

#### Install docker

<https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository>
<https://docs.docker.com/engine/install/linux-postinstall/>

#### Install Azure Cli

<https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt#option-1-install-with-one-command>

#### Install Kubernetes

<https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-kubectl-binary-with-curl-on-linux>
<https://minikube.sigs.k8s.io/docs/start/>

#### Install Helm

<https://helm.sh/docs/intro/install/#from-the-binary-releases>

#### Install Lens

<https://docs.k8slens.dev/getting-started/install-lens/#debian>

#### Install Azure ServiceBus Explorer

On windows I used: <https://github.com/paolosalvatori/ServiceBusExplorer>
<https://github.com/Carael/CrossBusExplorer>

### Backend

Linux is renowned for its prowess in backend development. Some tools to consider:

* Python: A versatile language for backend development.
* Docker: Containerization platform for building, shipping, and running applications.
* Flask/Django: Python web frameworks for building powerful APIs and web applications.

### Databases

Linux provides a variety of database options:

* PostgreSQL: A powerful open-source relational database.
* MongoDB: A NoSQL database for flexible data storage.
* MySQL: Another popular open-source relational database.

Other Tools
-----------

#### Video editing software

```bash
    sudo add-apt-repository ppa:kdenlive/kdenlive-stable
```

<https://ubuntuhandbook.org/index.php/2020/04/install-kdenlive-20-04-ppa-in-ubuntu-20-04/>

#### Gnome Tweaks

<https://linuxconfig.org/how-to-install-tweak-tool-on-ubuntu-22-04-lts-jammy-jellyfish-linux>

```bash
    gnome-tweaks
```

## Install Wireshark

```bash
    sudo add-apt-repository ppa:wireshark-dev/stable
    sudo apt update

    sudo apt install wireshark

    # display version
    apt show wireshark
```

File directories
---------------

### Windows to Ubuntu Linux

| Windows 11 Directory     | Explanation                                           | Ubuntu Linux Directory   | Explanation                                           |
|--------------------------|-------------------------------------------------------|--------------------------|-------------------------------------------------------|
| C:\                      | The root directory in Windows 11.                    | /                        | The root directory, the starting point of the file system hierarchy. |
| C:\Program Files         | Location for installed 64-bit applications.          | /usr                     | User-installed applications and libraries.           |
| C:\Program Files (x86)   | Location for installed 32-bit applications on 64-bit Windows. | N/A             | No direct equivalent.                                 |
| C:\Windows               | Contains core Windows system files and settings.     | N/A                     | No direct equivalent.                                 |
| C:\Users\<Username>      | User profiles and user-specific data.                | /home/<Username>         | User's home directory, where user-specific data is stored. |
| C:\Users\Public          | Shared files and folders accessible to all users.   | /home/Public             | Shared files and folders accessible to all users.   |
| C:\Users\<Username>\Desktop | The user's desktop folder.                        | /home/<Username>/Desktop | The user's desktop directory.                        |
| C:\Users\<Username>\Documents | Default location for user documents.           | /home/<Username>/Documents | Default location for user documents.           |
| C:\Users\<Username>\Downloads | Default location for downloaded files.         | /home/<Username>/Downloads | Default location for downloaded files.         |
| C:\Temp                  | Temporary directory for storing temporary files.     | /tmp                     | Temporary directory for storing temporary files.     |
| C:\ProgramData           | Application data shared among all users.             | /var                     | Variable data files, logs, and temporary files.      |
| C:\Windows\System32      | System directory for 64-bit system files and libraries. | /lib                     | Library files used by programs and the kernel.       |
| C:\Windows\SysWOW64      | System directory for 32-bit system files on 64-bit Windows. | N/A           | No direct equivalent.                                 |
| C:\Windows\SystemApps    | Contains system applications and components.         | /sbin                    | System binaries and administrator executables.       |
| C:\Windows\SystemVolumeInformation | System volume information and recovery files. | /bin          | Essential system binaries, required for system boot and repair. |
| C:\Recovery              | Contains Windows recovery files.                    | /etc                     | Configuration files and system-wide settings.        |
| C:\$Recycle.Bin          | Recycle Bin directory for deleted files.             | /mnt                     | Mount point for manually mounted file systems.       |
| C:\System Volume Information | System-related information and restore points.  | /media                   | Mount point for removable media (e.g., USB drives).  |

### Ubuntu Linux to Windows

| Directory (Ubuntu Linux) | Explanation                                           | Directory (Windows 11) | Explanation                                           |
|--------------------------|-------------------------------------------------------|-------------------------|-------------------------------------------------------|
| /                        | The root directory, the starting point of the file system hierarchy. | C:\                     | The root directory in Windows.                        |
| /bin                     | Essential system binaries, required for system boot and repair. | N/A                     | No direct equivalent.                                 |
| /boot                    | Contains boot loader files and the Linux kernel.     | N/A                     | No direct equivalent.                                 |
| /dev                     | Device files representing hardware and devices.       | N/A                     | No direct equivalent.                                 |
| /etc                     | Configuration files and system-wide settings.        | C:\Windows              | Contains Windows system files and settings.           |
| /home/<Username>         | User's home directory, where user-specific data is stored. | C:\Users\<Username>     | User's home directory in Windows.                     |
| /lib                     | Library files used by programs and the kernel.       | C:\Windows\System32     | System binaries and libraries in Windows.            |
| /media                   | Mount point for removable media (e.g., USB drives).  | N/A                     | No direct equivalent.                                 |
| /mnt                     | Mount point for manually mounted file systems.       | N/A                     | No direct equivalent.                                 |
| /opt                     | Directory for additional software packages and optional software. | N/A            | No direct equivalent.                                 |
| /proc                    | A virtual directory providing system and process information. | N/A           | No direct equivalent.                                 |
| /root                    | The home directory for the system administrator (root). | C:\Users\Administrator | The home directory for the Administrator user in Windows. |
| /sbin                    | System binaries and administrator executables.       | N/A                     | No direct equivalent.                                 |
| /srv                     | Data for services provided by the system.             | N/A                     | No direct equivalent.                                 |
| /sys                     | A virtual directory providing kernel parameters.      | N/A                     | No direct equivalent.                                 |
| /tmp                     | Temporary directory for storing temporary files.     | C:\Temp                 | Temporary directory in Windows.                       |
| /usr                     | User-installed applications and libraries.           | C:\Program Files        | Contains user-installed applications in Windows.      |
| /var                     | Variable data files, logs, and temporary files.      | C:\ProgramData          | Contains variable data files and program settings in Windows. |

Please note that there are significant differences between the directory structures of Ubuntu Linux and Windows 11, so not all directories have direct equivalents. Some directories in Ubuntu Linux serve specific Linux system functions that may not have a direct Windows equivalent.

Contributing
------------

Contributions to this repository are welcome! If you have suggestions, improvements, or additional content to share, please refer to the [Contributing Guidelines](CONTRIBUTING.md).

License
-------

This repository is licensed under the [GPL-3.0 license](LICENSE).

* * *

By sharing this journey, we hope to inspire fellow developers to explore Linux as a robust and efficient platform for their full stack development endeavors. If you have any questions, feedback, or stories to share about your own journey, feel free to contribute and connect with the developer community around this repository. Happy coding on Linux! 🐧🚀
