FROM  centos
#  centos is an Base os here no packages  are  pre configured 
MAINTAINER  ashutoshh@linux.com , +91-9509957594
RUN   yum  install  httpd  -y
#  here  yum  will be installing  httpd in centos based image 
WORKDIR  /var/www/html/
# changing  directory to documentroot of  httpd  server  
COPY   myapp  .
#  copying  all the data to  /var/www/html/  from  myapp directory 
EXPOSE  80 
#  we are telling  docker engine to use default port for this docker image 
#CMD /usr/sbin/httpd  -DFOREGROUND
ENTRYPOINT  /usr/sbin/httpd  -DFOREGROUND
# this is the replacement of CMD  and  we can't change parent process as container argument 
