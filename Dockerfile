FROM ubuntu

RUN apt update && apt install wget gnupg -y \
  && wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - \
  && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list \
  && apt update && apt install mongodb-mongosh -y