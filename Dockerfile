#FROM fabric8/tomcat-9
#COPY dt-1.0.war /opt/tomcat/webapps/
FROM bitnami/tomcat:9.0
COPY dt-1.0.war /opt/bitnami/tomcat/webapps
