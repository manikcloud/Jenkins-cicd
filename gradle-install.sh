#!/bin/bash

# Update package lists for upgrades and package dependencies
sudo apt-get update

# Install the required software-properties-common package
sudo apt-get install -y software-properties-common

# Add the official Gradle PPA (Personal Package Archive) to your system
sudo add-apt-repository -y ppa:cwchien/gradle

# Update package lists to include the Gradle PPA
sudo apt-get update

# Install Gradle
sudo apt-get install -y gradle

# Verify the Gradle installation
gradle -v
