FROM kindest/node:v1.24.3

# configs
COPY ./configs/* /kind/

# Update packages
RUN apt update && apt install nano && apt install wget
#RUN CILIUM_CLI_VERSION=$(curl -s https://raw.githubusercontent.com/cilium/cilium-cli/master/stable.txt) && CLI_ARCH=amd64 && if [ "$(uname -m)" = "aarch64" ]; then CLI_ARCH=arm64; fi && curl -L --fail --remote-name-all https://github.com/cilium/cilium-cli/releases/download/${CILIUM_CLI_VERSION}/cilium-linux-${CLI_ARCH}.tar.gz{,.sha256sum} && sha256sum --check cilium-linux-${CLI_ARCH}.tar.gz.sha256sum && tar xzvfC cilium-linux-${CLI_ARCH}.tar.gz /usr/local/bin


# Startup script
COPY ./configs/rc.local /etc/rc.local
RUN chmod +x /etc/rc.local
COPY ./configs/rc-local.service /etc/systemd/system
