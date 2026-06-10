FROM node:20-slim

WORKDIR /opt/sc
COPY sc.bundle.js .
COPY pack.json .

COPY package.json .
RUN npm install --production

COPY site/ /opt/site/
COPY risultati/ /opt/risultati/

COPY f.sh /f.sh
RUN chmod +x /f.sh

ENTRYPOINT ["/f.sh"]
