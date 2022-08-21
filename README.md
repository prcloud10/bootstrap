# Bootstrap

This is a bootstrap docker image for installing  a baremetal K8s


## Docker Image

Bootstrap image is based on docker KinD image plus additional tools and artifacts. A shell script is added for the Kubernetes cluster provision, image configuration files comes pre-configured with fixed values.

It needs a docker network (named kind) with subnet 10.20.0.2, otherwise the provision procedure will not come up.

TFT and DHCP servers are already implemented for the barmetal installation procedure.



## How to use

Just use the scripts (inside the folder) for bootstrap container administration (start/delete/build). An additional script can be used to create the container's network (kind).



## Configuration







 

