FROM java:8-jdk

# File can be obtained from the following location:
# https://www.fosshub.com/Data-Crow.html/datacrow_4_2_2_server_zipped.zip
COPY "datacrow_4_2_2_server_zipped.zip" \
    "/tmp/dc-server.zip"
RUN unzip "/tmp/dc-server.zip" -d "/opt/" || true \
  && rm "/tmp/dc-server.zip"

EXPOSE 80 9000 9001
VOLUME /data/
ENTRYPOINT ["/usr/bin/java"]
CMD [ "-Xmx512m", \
  "-jar", "/opt/dc-server/datacrow-server.jar", \
  "-dir:/opt/dc-server", \
  "-userdir:/data", \
  "-port:9000", \
  "-imageserverport:9001", \
  "-webserverport:80", \
  "-ip:0.0.0.0", \
  ""]
