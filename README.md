# From Windows 11 to Linux: A Full Stack Developer's Journey

Welcome to the From Windows 11 to Linux: A Full Stack Developer's Journey repository! In this repository, we document the comprehensive journey of transitioning from Windows 11 to Linux as the primary development environment for a full stack developer. Whether you're new to Linux or an experienced user, this guide aims to provide a step-by-step account of the transition process, highlighting challenges, solutions, and best practices.

## Hire me

Please send [email](mailto:kingdavidconsulting@gmail.com) if you consider to **hire me**.

[![buymeacoffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/vyve0og)

## Give a Star! :star2:

It supports the following authentication libraries:
Table of Contents
-----------------

* [Introduction](#introduction)
* [Prerequisites](#prerequisites)
* [Development Tools](#development-tools)
  * [Install `git` for version control](#install-git)
  * [Frontend](#frontend)
  * [Backend](#backend)
  * [Databases](#databases)
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

### Install git

Git is an essential part of a developer's toolkit. Linux seamlessly integrates with Git, making version control efficient and effective.

* Git: Install and configure Git for version control in your projects.

```bash
# Install Git
sudo apt install git-all

# Configure SSH for GitHub or Dev.Azure.com repositories
# Generate an SSH key (replace "email@domain.com" with your email)
ssh-keygen -t ed25519 -C "email@domain.com"

# Start the SSH agent
eval "$(ssh-agent -s)"

# Add your SSH key to the agent (replace "~/.ssh/id_ed25519.pub" with your actual key path)
ssh-add ~/.ssh/id_ed25519

# Now, add the SSH key to your GitHub or Dev.Azure.com account
# You can do this by copying the SSH key from "~/.ssh/id_ed25519.pub" and adding it to your account settings.
# For GitHub: https://github.com/settings/keys
# For Dev.Azure.com: https://dev.azure.com/your-organization/_usersSettings/keys
```

Follow these steps to install Git, configure SSH access with an Ed25519 key, and add the key to your GitHub or Dev.Azure.com account for secure and convenient repository access.

### Install `vscode` insiders version

Once windows eco system is abandon, there are a couple of choices are left for Code Editor. I have been using VSCode for years and of course that was my choice for Ubuntu Linux. I have been using `vscode` insider version and rarely ran into an issues after a daily update, I prefer to stay on the cutting edge.

### Frontend

For frontend development, Linux offers a plethora of tools and libraries. A few key ones are:

* Node.js: Install Node.js and npm for JavaScript runtime and package management.
* npm/yarn: Package managers for frontend dependencies.
* Visual Studio Code: A versatile code editor with numerous extensions for web development.

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


Version Control
---------------

Git is an essential part of a developer's toolkit. Linux seamlessly integrates with Git, making version control efficient and effective.

* Git: Install and configure Git for version control in your projects.

Contributing
------------

Contributions to this repository are welcome! If you have suggestions, improvements, or additional content to share, please refer to the [Contributing Guidelines](contributing.md).

License
-------

This repository is licensed under the [GPL-3.0 license](LICENSE).

* * *

By sharing this journey, we hope to inspire fellow developers to explore Linux as a robust and efficient platform for their full stack development endeavors. If you have any questions, feedback, or stories to share about your own journey, feel free to contribute and connect with the developer community around this repository. Happy coding on Linux! 🐧🚀

## Installing .Net

<https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#register-the-microsoft-package-repository>

1. Add Microsoft Repository

2. Install package

```bash
    sudo apt install dotnet-sdk-7.0

    sudo apt-get remove dotnet-sdk-7.0
```

## Installing node.js

<https://github.com/nvm-sh/nvm#troubleshooting-on-linux>

## Video editing software

```bash
    sudo add-apt-repository ppa:kdenlive/kdenlive-stable
```

<https://ubuntuhandbook.org/index.php/2020/04/install-kdenlive-20-04-ppa-in-ubuntu-20-04/>

## Install docker

<https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository>
<https://docs.docker.com/engine/install/linux-postinstall/>

## Azure Cli

<https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt#option-1-install-with-one-command>

## Installing Kubernetes

<https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-kubectl-binary-with-curl-on-linux>
<https://minikube.sigs.k8s.io/docs/start/>

## Installing Helm

<https://helm.sh/docs/intro/install/#from-the-binary-releases>

## Installing Lens

<https://docs.k8slens.dev/getting-started/install-lens/#debian>

## ServiceBus Explorer

On windows I used: <https://github.com/paolosalvatori/ServiceBusExplorer>
<https://github.com/Carael/CrossBusExplorer>

<https://linuxconfig.org/how-to-install-tweak-tool-on-ubuntu-22-04-lts-jammy-jellyfish-linux>

```bash
    gnome-tweaks
```

## Installing Wireshark

```bash
    sudo add-apt-repository ppa:wireshark-dev/stable
    sudo apt update

    sudo apt install wireshark

    # display version
    apt show wireshark
```
