FROM mongo

COPY ./scripts /scripts

# key
RUN chown mongodb:mongodb /scripts/mongo-keyfile
RUN chmod 400 /scripts/mongo-keyfile

# init script
RUN chmod 777 /scripts/rs-init

EXPOSE 27017

# CMD [ "mongod", "--keyFile", "/scripts/mongo-keyfile", "--bind_ip_all", "--replSet", "my-mongo-set" ]
# CMD [ "mongod" ]
CMD [ "/scripts/rs-init" ]
