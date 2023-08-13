# From Windows 11 to Linux: A Full Stack Developer's Journey
Welcome to the From Windows 11 to Linux: A Full Stack Developer's Journey repository! In this repository, we document the comprehensive journey of transitioning from Windows 11 to Linux as the primary development environment for a full stack developer. Whether you're new to Linux or an experienced user, this guide aims to provide a step-by-step account of the transition process, highlighting challenges, solutions, and best practices.


Welcome to the **From Windows 11 to Linux: A Full Stack Developer's Journey** repository! In this repository, we document the comprehensive journey of transitioning from Windows 11 to Linux as the primary development environment for a full stack developer. Whether you're new to Linux or an experienced user, this guide aims to provide a step-by-step account of the transition process, highlighting challenges, solutions, and best practices.

Table of Contents
-----------------

*   [Introduction](#introduction)
*   [Prerequisites](#prerequisites)
*   [Getting Started](#getting-started)
*   [Setting Up Linux](#setting-up-linux)
*   [Development Tools](#development-tools)
    *   [Frontend](#frontend)
    *   [Backend](#backend)
    *   [Databases](#databases)
    *   [IDEs and Editors](#ides-and-editors)
*   [Version Control](#version-control)
*   [Deployment](#deployment)
*   [Challenges and Solutions](#challenges-and-solutions)
*   [Tips and Best Practices](#tips-and-best-practices)
*   [Contributing](#contributing)
*   [License](#license)

Introduction
------------

As the landscape of software development continues to evolve, developers often find themselves exploring new platforms and environments. This repository chronicles the journey of a full stack developer making the transition from Windows 11 to Linux. The goal is not only to adapt to a new operating system but also to maximize productivity, streamline development workflows, and leverage the Linux ecosystem's unique advantages.

Prerequisites
-------------

Before embarking on this journey, it's important to have a basic understanding of both Windows and Linux environments, as well as proficiency in programming languages, version control systems, and software development concepts.

Getting Started
---------------

To start the journey, we recommend following these initial steps:

1.  **Research and Plan**: Familiarize yourself with Linux distributions, desktop environments, and package managers. Research which Linux distribution aligns best with your preferences and development needs.
    
2.  **Backup**: Before making any significant changes, ensure you have backed up your important data and configurations from your Windows 11 system.
    
3.  **Select a Linux Distribution**: Choose a Linux distribution that suits your requirements. Popular options include Ubuntu, Fedora, and Debian. This repository will use Ubuntu as an example.
    

Setting Up Linux
----------------

Detailed steps for setting up your chosen Linux distribution can be found in the [Setting Up Linux](setup_linux.md) guide. This guide covers installation, dual-boot configurations, partitioning, and driver installation.

Development Tools
-----------------

### Frontend

For frontend development, Linux offers a plethora of tools and libraries. A few key ones are:

*   Node.js: Install Node.js and npm for JavaScript runtime and package management.
*   npm/yarn: Package managers for frontend dependencies.
*   Visual Studio Code: A versatile code editor with numerous extensions for web development.

### Backend

Linux is renowned for its prowess in backend development. Some tools to consider:

*   Python: A versatile language for backend development.
*   Docker: Containerization platform for building, shipping, and running applications.
*   Flask/Django: Python web frameworks for building powerful APIs and web applications.

### Databases

Linux provides a variety of database options:

*   PostgreSQL: A powerful open-source relational database.
*   MongoDB: A NoSQL database for flexible data storage.
*   MySQL: Another popular open-source relational database.

### IDEs and Editors

Linux boasts a range of integrated development environments (IDEs) and text editors:

*   Visual Studio Code: A cross-platform code editor with robust features.
*   PyCharm: An IDE for Python development.
*   IntelliJ IDEA: A powerful IDE for Java development.

Version Control
---------------

Git is an essential part of a developer's toolkit. Linux seamlessly integrates with Git, making version control efficient and effective.

*   Git: Install and configure Git for version control in your projects.

Deployment
----------

Linux servers are widely used for deploying applications. Learn about:

*   SSH: Securely connect to remote servers.
*   Web Servers (e.g., Nginx, Apache): Set up web servers to deploy your applications.
*   Cloud Platforms: Explore platforms like AWS, Google Cloud, or Azure for scalable deployments.

Challenges and Solutions
------------------------

The transition from Windows 11 to Linux might come with challenges such as software compatibility, unfamiliar interfaces, and hardware drivers. Our [Challenges and Solutions](challenges.md) guide addresses common obstacles and provides strategies for overcoming them.

Tips and Best Practices
-----------------------

Check out our [Tips and Best Practices](best_practices.md) guide for insights on optimizing your Linux development environment, boosting productivity, and staying up-to-date with the latest tools and practices.

Contributing
------------

Contributions to this repository are welcome! If you have suggestions, improvements, or additional content to share, please refer to the [Contributing Guidelines](contributing.md).

License
-------

This repository is licensed under the [MIT License](LICENSE).

* * *

By sharing this journey, we hope to inspire fellow developers to explore Linux as a robust and efficient platform for their full stack development endeavors. If you have any questions, feedback, or stories to share about your own journey, feel free to contribute and connect with the developer community around this repository. Happy coding on Linux! 🐧🚀

```
    ssh-keygen -t ed25519 -C "o@kingdavidconsulting.com"
    eval "$(ssh-agent -s)"

    ssh-add ~/.ssh/id_ed25519.pub
```

<https://git-scm.com/book/en/v2/Getting-Started-Installing-Git>
```
    sudo apt install git-all
```

## Installing .Net

https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#register-the-microsoft-package-repository

1. Add Microsoft Repository

2. Install package

```bash
    sudo apt install dotnet-sdk-7.0

    sudo apt-get remove dotnet-sdk-7.0
```

## Installing node.js

<https://github.com/nvm-sh/nvm#troubleshooting-on-linux>


##  Video editing software

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