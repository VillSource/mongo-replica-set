FROM mongo

COPY ./scripts /scripts
EXPOSE 27017

RUN chmod 666 /scripts/mongo-keyfile
RUN cp /scripts/mongo-keyfile /scripts/key
RUN chmod 400 /scripts/key
RUN chown mongodb:mongodb /scripts/key

CMD [ "mongod", "--keyFile", "/scripts/key", "--bind_ip_all", "--replSet","my-mongo-set" ]
# CMD [ "mongod", "--replSet","my-mongo-set" ]