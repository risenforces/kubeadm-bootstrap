# kubeadm bootstrap

Script toolbox for full kubernetes installation on Ubuntu 18.04

## Usage

You should execute commands under the `root` user

### Prepare

- Disables swap
- Opens required ports

```sh
source <(wget -qO- https://raw.githubusercontent.com/risenforces/kubeadm-bootstrap/main/prepare.sh)
```

### Install kubeadm

```sh
source <(wget -qO- https://raw.githubusercontent.com/risenforces/kubeadm-bootstrap/main/install-kubeadm.sh)
```

### Initialize kubeadm

```sh
source <(wget -qO- https://raw.githubusercontent.com/risenforces/kubeadm-bootstrap/main/init-kubeadm.sh)
```