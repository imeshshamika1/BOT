FROM fusuf/whatsasena:latest

RUN git clone https://github.com/imeshshamika1/BOT /root/BOT
WORKDIR /root/BOT/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
