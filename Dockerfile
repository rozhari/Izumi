WORKDIRmi-botmi-botM node:lts-buster
RUN apt-get update && \
  apt-get install -y ffmpeg git imagemagick webp && \
  npm i -g pm2 && \
  rm -rf /var/lib/apt/lists/*
RUN https://github.com/rozhari/Izumi /root/bot
WORKDIR /root/bot
RUN npm install --legacy-peer-deps
CMD ["npm", "start"]
