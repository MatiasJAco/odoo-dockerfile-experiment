FROM odoo:12
RUN mkdir /tmp/test
RUN echo "hola mundo" > /tmp/test/hola_mundo.txt
RUN echo "hola mundo" > /mnt/extra-addons/hola_mundo_addons.txt
RUN echo "hola mundo" > /var/lib/odoo/hola_mundo_addons.txt
