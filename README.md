# Bootstrap

This is a bootstrap docker image for installing  a baremetal K8s


## Docker Image

Bootstrap image is based on docker KinD image plus additional tools and artifacts. A shell script is added for the Kubernetes cluster provision, image configuration files comes pre-configured with fixed values.

TFT and DHCP servers are already implemented for the barmetal installation procedure.



## How to use

Just use the scripts (inside the folder) for bootstrap container administration (start/delete/build). An additional script can be used to create the container's network (kind).


1. Check kubeadm.conf inside configs folder and change control plane ip address based on your docker network configuration.


2. Prepare bare metal config file (Check Bare metal configuration for more details)


3. Build the bootstrap image

        ./scripts/build


4. Start container

        ./scripts/start --detach



You should get a running single-node k8s cluster with all provision services. Allowed MAC address will be used to PXE boot and install the OS automatically.





## Bare metal Configuration

Change the baremetal.yaml file to include information about bare metal servers. Define items such as server type (worker or control node), name, mac address, ipmi, cloudinit, os images, ssh keys, etc  




## OS Images 

A default Ubuntu OS is included.












 

