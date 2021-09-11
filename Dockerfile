FROM debian
RUN apt update && BUILD_PACKAGES="curl build-essential zlib1g-dev libpcre3 libpcre3-dev unzip uuid-dev wget sudo" && apt install -y $BUILD_PACKAGES
RUN wget https://ngxpagespeed.com/install && bash install --nginx-version latest
RUN apt-get autoremove --purge -y curl build-essential zlib1g-dev libpcre3 libpcre3-dev unzip uuid-dev wget sudo && rm -rf /var/lib/apt/lists/*
