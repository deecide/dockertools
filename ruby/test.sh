#!/bin/zsh -e

VERSION=$1
cd ..
echo -e "\e[31m== Testing $VERSION ==\e[0m"
echo -e "\e[31m== ARM64 ==\e[0m"
docker run --platform "linux/arm64" -t --rm -v ".:/dockertools-master" ogarcia/archlinux:devel sh -c "/dockertools-master/install_packages.sh libyaml && /dockertools-master/install_ruby.sh $VERSION && ruby -v"
echo -e "\e[31m↑ Should be: ruby $VERSION ... [aarch64-linux] ↑\n\e[0m"
echo -e "\e[31m== AMD64 ==\e[0m"
docker run --platform "linux/amd64" -t --rm -v ".:/dockertools-master" ogarcia/archlinux:devel sh -c "/dockertools-master/install_packages.sh libyaml && /dockertools-master/install_ruby.sh $VERSION && ruby -v"
echo -e "\e[31m↑ Should be: ruby $VERSION ... [x86_64-linux] ↑\e[0m"
