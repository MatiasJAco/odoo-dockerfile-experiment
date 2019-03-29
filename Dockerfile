FROM odoo:12
RUN mkdir /tmp/test
RUN echo "hola mundo" > /tmp/test/hola_mundo.txt
