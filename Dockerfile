FROM odoo:12
USER root
RUN mkdir /tmp/test
RUN mkdir /home/odoo
RUN mkdir /home/odoo/custom-addons
RUN chmod -R 775 /home/odoo
RUN chown -R odoo:odoo /home/odoo
RUN echo "hola mundo" > /tmp/test/hola_mundo.txt
RUN echo "hola mundo" > /mnt/extra-addons/hola_mundo_addons.txt
RUN echo "hola mundo" > /var/lib/odoo/hola_mundo_addons.txt
