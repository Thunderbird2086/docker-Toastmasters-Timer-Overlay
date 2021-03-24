FROM node:12

MAINTAINER Thunderbird2086 <37539914+Thunderbird2086@users.noreply.github.com>

WORKDIR /opt

# Install Toastmasters Timer Overlay (Bug fix Branch from Thunderbird2086)
RUN wget https://github.com/Thunderbird2086/Toastmasters-Timer-Overlay/archive/refs/tags/latest.zip

RUN unzip latest.zip
RUN mv Toastmasters-Timer-Overlay-latest Toastmasters-Timer-Overlay

RUN cd Toastmasters-Timer-Overlay; npm install; npm run build

EXPOSE 8888
CMD ["node", "/opt/Toastmasters-Timer-Overlay"]
