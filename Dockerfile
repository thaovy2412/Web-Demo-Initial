FROM node
WORKDIR /usr/src/app
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 3000
ADD shell.sh /usr/local/bin/shell.sh
RUN chmod 777 /usr/local/bin/shell.sh
CMD ["/usr/local/bin/shell.sh"]
# CMD ["/bin/bash", "-c", "while !</dev/tcp/$DB_HOST/$DB_PORT;do sleep 1;done; npm start"]

