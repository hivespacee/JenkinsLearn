FROM jenkins/jenkins:lts

USER root

# Install Docker CLI and Python
RUN apt-get update && \
    apt-get install -y \
        docker.io \
        python3 python3-pip python3-venv && \
    usermod -aG docker jenkins

# Optional: Verify Docker is working inside the container
# RUN docker --version

USER jenkins
