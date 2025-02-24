FROM tomcat:10.1.8

RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY webapp.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]