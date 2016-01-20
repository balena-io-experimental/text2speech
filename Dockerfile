# Select a Base image from https://hub.docker.com/r/resin/raspberrypi2-node/tags/
FROM resin/raspberrypi2-node:4.2-20160114

# Install your app dependencies here
RUN apt-get update && apt-get install -yq \
    alsa-utils \
    libasound2-dev \
    festival \
    festvox-kallpc16k \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV INITSYSTEM on

WORKDIR /usr/src/app

# Build your node.js dependencies with npm
COPY package.json .
RUN DEBIAN_FRONTEND=noninteractive JOBS=MAX npm install --unsafe-perm

# put all your source into the working directory (i.e. /usr/src/app)
COPY . .

# Run this command when the container starts on the device.
CMD ["node", "server.js"]
