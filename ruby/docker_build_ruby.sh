#!/bin/bash -e

FILENAME=ruby-$VERSION-$(uname -m).tar.gz
echo -e "\e[31m\n== Building $FILENAME ==\n\e[0m"

echo -e "\e[31mInstalling packages\e[0m"
pacman -Sy --noconfirm
pacman -S --noconfirm ruby-build libyaml aws-cli-v2

echo -e "\e[31m\nBuilding Ruby\e[0m"
ruby-build $VERSION /usr/local || cat /tmp/ruby-build.*.log
tar -czf /ruby/$FILENAME /usr/local

echo -e "\e[31m\nUploading to S3\e[0m"
aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set default.region eu-west-3
aws s3 cp /ruby/$FILENAME s3://igrubies/$FILENAME --acl public-read

rm /ruby/$FILENAME
echo -e "\e[31m\nDone\n\e[0m"