# Development On Linux Journey


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