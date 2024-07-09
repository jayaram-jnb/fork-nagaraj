#!/bin/bash

# Install Java 11
sudo yum install java-11-openjdk-devel -y

# Download Maven
wget https://dlcdn.apache.org/maven/maven-3/3.9.8/binaries/apache-maven-3.9.8-bin.tar.gz

# Extract Maven to /opt
sudo tar xzf apache-maven-3.9.8-bin.tar.gz -C /opt

# Create a profile script for Maven
sudo tee /etc/profile.d/maven.sh > /dev/null <<EOF
export M2_HOME=/opt/apache-maven-3.9.8
export PATH=\${M2_HOME}/bin:\${PATH}
EOF

# Make the script executable
sudo chmod +x /etc/profile.d/maven.sh

# Source the profile script
source /etc/profile.d/maven.sh
echo "Maven is installed!!!!!!!!!!!!"
# Verify Maven installation
mvn -version
