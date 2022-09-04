FROM kindest/node:v1.24.3

# configs
COPY ./configs/* /bootstrap/
COPY ./images/* /bootstrap/

# Update packages
RUN apt update 
RUN apt install nano -y
RUN apt install wget -y

# Install helm
RUN wget https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 && chmod +x get-helm-3 && ./get-helm-3 

# Startup script
COPY ./configs/rc.local /etc/rc.local
RUN chmod +x /etc/rc.local
COPY ./configs/rc-local.service /etc/systemd/system


