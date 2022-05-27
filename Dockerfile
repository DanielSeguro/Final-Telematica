FROM ubuntu
RUN apt update
RUN apt install tzdata -y
ENV TZ="America/Bogota"
RUN apt install git -y
RUN apt install apache2 -y
RUN git clone https://github.com/DanielSeguro/ProyectoPagina
EXPOSE 80
RUN cp -r ProyectoPagina/* /var/www/html/
RUN rm /var/www/html/index.html
CMD apachectl -D FOREGROUND