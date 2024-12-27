# Use Debian as the base image
FROM debian:latest
 
# Set environment variables for non-interactive installations
ENV DEBIAN_FRONTEND=noninteractive
ENV ROOT_PASSWORD=root
 
# Update package list and install required packages
RUN apt-get update && \
    apt-get install -y \
    openssh-server \
    wget \
    unzip \
    lsb-release \
    gnupg \
    gnupg2 \
    software-properties-common \
    sudo && \
    apt-get clean
 
# Add the HashiCorp GPG key and Terraform repository
RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
 
# Install Terraform
RUN apt-get update && apt-get install -y terraform
 
# Configure SSH server and root password
RUN mkdir /var/run/sshd && \
    echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && \
    echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config && \
    echo "root:${ROOT_PASSWORD}" | chpasswd
 
# Expose SSH port
EXPOSE 22
 
# Start SSH server
CMD ["/usr/sbin/sshd", "-D"]
