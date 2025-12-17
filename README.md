# IG Docker tools

## Usage

```Dockerfile
# Get dockertools
RUN curl https://codeload.github.com/deecide/dockertools/tar.gz/refs/heads/master -o dockertools.tar.gz && \
    tar -xzf dockertools.tar.gz -C / && \
    rm dockertools.tar.gz

# Install packages (will also update pacman beforehand)
RUN /dockertools-master/install_packages.sh libjpeg-turbo pngquant optipng gifsicle libwebp svgo python

# Install node
RUN /dockertools-master/install_node.sh 22.20.0

# Install ruby
# Make sure you first install_packages.sh libyaml
RUN /dockertools-master/install_ruby.sh 3.4.4

# Install yay (AUR)
# Make sure you first install_packages.sh git
RUN /dockertools-master/install_yay.sh mongodb-tools-bin postgresql17-libs
```

## Prepare Ruby

Ruby is pre-built on a dev machine to speed up the install.

Process:

- starts a Docker container from Arch
- builds ruby
- tars it into ruby-x.x.x.tar.gz
- uploads to S3

Make sure ruby/.env is correct, then:

```bash
cd ruby/
./build.sh 3.1.2
```
