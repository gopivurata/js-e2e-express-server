FROM ubuntu:20.04
LABEL app="Express.js server"
LABEL owner="gopi"
RUN apt update && \
    apt install nodejs -y && \
    apt install npm -y && \
    apt install git -y && \
    git clone https://github.com/gopivurata/js-e2e-express-server.git && \
    cd js-e2e-express-server
WORKDIR js-e2e-express-server
RUN npm install
EXPOSE 3000
CMD ["npm", "start", "--host", "0.0.0.0"]


FROM node:16
LABEL app="Express.js server"
LABEL owner="gopi"
RUN git clone https://github.com/gopivurata/js-e2e-express-server.git && \
    cd js-e2e-express-server
WORKDIR /js-e2e-express-server
RUN npm install
EXPOSE 3000
CMD ["npm", "start", "--host", "0.0.0.0"]
