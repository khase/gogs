FROM gogs/gogs:latest

COPY ./scripts /opt/scripts

ENTRYPOINT /opt/scripts/init.sh && /app/gogs/docker/start.sh 
CMD /bin/s6-svscan /app/gogs/docker/s6/