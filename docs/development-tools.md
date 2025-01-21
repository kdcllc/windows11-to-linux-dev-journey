# Development Tools

In the world of programming languages, compatibility is key. Each programming language must possess the ability to run seamlessly on different versions of compilers. This ensures that developers have the flexibility to work with various toolchains and environments, making their code accessible and adaptable.

Additionally, programming languages employ dependency resolution mechanisms similar to popular package managers like `npm`, `nuget`, or `pip`. These mechanisms play a pivotal role in handling references and creating executable environments. They enable developers to seamlessly integrate libraries, packages, and modules into their projects.

For instance, consider the scenario of running multiple versions of key runtime environments like Node.js, Python, or .NET Core on a single machine. This capability is crucial for developers who work on a diverse range of projects that may require different language versions or dependencies.

As a diligent developer, I always strive to set up my development environment in a way that supports the ability to run different versions of Node.js, Python or .NET Core on the same machine. This not only enhances flexibility but also ensures that I can tackle a wide array of projects without being limited by version constraints.

## Install and configuring `git`

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
    ssh-keygen -t ed25519 -C "email@domain.com" -f ~/.ssh/github
    
    # Start the SSH agent
    eval "$(ssh-agent -s)"
    
    # Add your SSH key to the agent
    ssh-add ~/.ssh/github

    cat ~/.ssh/github.pub
    # For GitHub: https://github.com/settings/keys

```

Add Keys to Azure DevOps  <https://dev.azure.com/your-organization/_usersSettings/keys>

```bash
    
    ssh-keygen ssh-keygen -t rsa -b 4096 -C "email@domain.com" -f ~/.ssh/devops
 
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

## Install VScode

Once you've made the decision to transition away from the Windows ecosystem, selecting the right code editor becomes crucial. Having used VSCode for years, it was my natural choice when I moved to Ubuntu Linux.

### Installing VSCode

There are two options to install VSCode:

1. using snap store
2. using `apt` command

#### Snap Install

1. To install VSCode, you can use the following command:

```bash
    sudo snap install code --classic

    # or 
    sudo snap install code-insiders --classic
```

   This command installs the Visual Studio Code (VSCode) using Snap, a universal package manager in Ubuntu.

2. After the installation is complete, you can launch VSCode by searching for it in the application menu or using the following command:

```bash
   code
    
    # or 
    code-insiders
```

#### Installing VSCode with `apt`

<https://code.visualstudio.com/docs/setup/linux#_debian-and-ubuntu-based-distributions>

add repo feed

```bash
    sudo apt-get install wget gpg
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
    rm -f packages.microsoft.gpg
```

Install the app

```bash
    sudo apt install apt-transport-https
    sudo apt update
    sudo apt install code # or code-insiders
```

This setup allows you to enjoy the latest features and improvements in VSCode while working within the Ubuntu Linux environment.

## Install NodeJs

### [Install `nvm`:](https://github.com/nvm-sh/nvm)

Make sure that the latest curl command is executed: <https://github.com/nvm-sh/nvm>

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

### Uninstall `nvm`

```bash
    # To uninstall nvm, you can simply remove its directory and associated files
    rm -rf ~/.nvm
    rm -
```

## Install DotNet Core

Initially, I attempted to install .Net Core from Microsoft package repository but I ran into issue with it.
Since, the desired outcome is flexibility and ability to run any version of the .Net Core I need at any time; then
manual installation is the best bet.

Change the env variable `version` to the desired version.
Manual steps or use script [./dotnet-install.sh 8.0.303](../scripts/dotnet-install.sh)

```bash
    export DOTNET_VERSION=8.0.303
    
    wget https://dotnetcli.azureedge.net/dotnet/Sdk/${DOTNET_VERSION}/dotnet-sdk-${DOTNET_VERSION}-linux-x64.tar.gz
    
    mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-${DOTNET_VERSION}-linux-x64.tar.gz -C $HOME/dotnet
    
    # export DOTNET_ROOT=$HOME/dotnet
    # export PATH=$PATH:$HOME/dotnet
    
    echo "export DOTNET_ROOT=\$HOME/dotnet" >> ~/.bashrc && echo "export PATH=\$PATH:\$HOME/dotnet" >> ~/.bashrc && echo "export DOTNET_CLI_TELEMETRY_OPTOUT=true" >> ~/.bashrc
    
    source ~/.bashrc
    
    rm dotnet-sdk-${DOTNET_VERSION}-linux-x64.tar.gz
    dotnet --list-sdks
    dotnet --version
```

[register the microsoft package repository](https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#register-the-microsoft-package-repository)

1. Add Microsoft Repository

2. Install package

```bash
    sudo apt install dotnet-sdk-8.0

    sudo apt-get remove dotnet-sdk-8.0
```

## Install Docker

1. [install using the repository](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)
2. [enable `docker run hello-world` without `sudo`](https://docs.docker.com/engine/install/linux-postinstall/)

### Install Docker Compose

[Install Docker Compose](https://github.com/docker/compose)

```bash
    export docker_v="v2.29.1"
    sudo curl -L "https://github.com/docker/compose/releases/download/${docker_v}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    # enable execute
    sudo chmod +x /usr/local/bin/docker-compose

    # verify
    docker-compose --version
```

## Install Azure Cli

[How to solve The following signatures couldn't be verified because the public key is not available: NO_PUBKEY EB3E94ADBE1229CF](https://superuser.com/questions/1820219/how-to-solve-the-following-signatures-couldnt-be-verified-because-the-public-ke)

```bash
    curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/microsoft-prod.gpg
```

[install-with-one-command](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt#option-1-install-with-one-command)

```bash
    # install
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
    # turn off telemetry
    az config set core.collect_telemetry=no
```

## Install Azure Developer cli

<https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/install-azd?tabs=winget-windows%2Cbrew-mac%2Cscript-linux&pivots=os-linux>

```bash
    # install and upgrade
    curl -fsSL https://aka.ms/install-azd.sh | bash
    # update
    curl -fsSL https://aka.ms/install-azd.sh | bash
    # uninstall 
    curl -fsSL https://aka.ms/uninstall-azd.sh | bash
```

### Install Kubernetes

<https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-kubectl-binary-with-curl-on-linux>

## Install Azure ServiceBus Explorer

On windows I used: [ServiceBusExplorer](https://github.com/paolosalvatori/ServiceBusExplorer)
but I found this project [CrossBusExplorer](https://github.com/Carael/CrossBusExplorer)

## Installing Microsoft SQL ODBC

[scripts/odbc-install.sh](../scripts/odbc-install.sh)

* [System Requirements (Linux and macOS)](https://learn.microsoft.com/en-us/sql/connect/odbc/linux-mac/system-requirements?view=sql-server-ver16#operating-system-support)
* [Install the Microsoft ODBC driver for SQL Server (Linux)](https://learn.microsoft.com/en-us/sql/connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server)

## Additional Tools

For more details on setting up .NET Core development, refer to the [DotNetCore development on Ubuntu](./dotnetcore.md) guide.

For instructions on adding NAS SMB mounts, refer to the [Add NAS SMB mount](./MapNas.md) guide.

## Bash Scripts

Here are some useful bash scripts for setting up your development environment:

* [Install Docker Compose](../scripts/docker-compose-install.sh): Script to install Docker Compose.
* [Install .NET SDK](../scripts/dotnet-install.sh): Script to install a specific version of the .NET SDK.
* [Install ODBC Driver](../scripts/odbc-install.sh): Script to install the Microsoft ODBC Driver for SQL Server.

## Install Scripts

You can use the following commands to install the scripts directly from the repository:

* Install Docker Compose:

  ```bash
  curl -fsSL https://raw.githubusercontent.com/kdcllc/windows11-to-linux-dev-journey/refs/heads/master/scripts/docker-compose-install.sh | sh
  ```

* Install .NET SDK:

  ```bash
  curl -fsSL https://raw.githubusercontent.com/kdcllc/windows11-to-linux-dev-journey/refs/heads/master/scripts/dotnet-install.sh | sh
  ```

* Install ODBC Driver:

  ```bash
  curl -fsSL https://raw.githubusercontent.com/kdcllc/windows11-to-linux-dev-journey/refs/heads/master/scripts/odbc-install.sh | sh
  ```
