FROM python:3.9

COPY install.sh .
RUN ["chmod", "+x", "install.sh"]
RUN ./install.sh