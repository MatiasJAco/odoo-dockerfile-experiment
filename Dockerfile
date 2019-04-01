FROM odoo:12
USER root
RUN set -x; \
        apt-get update \
        && apt-get install -y --no-install-recommends \
        && apt-get install -y zip
RUN mkdir /tmp/test
RUN mkdir /home/odoo
RUN mkdir /home/odoo/custom-addons
RUN chmod -R 775 /home/odoo
RUN chown -R odoo:odoo /home/odoo
RUN cd /home/odoo/custom-addons && curl -LOk  https://github.com/MatiasJAco/odoo-dockerfile-experiment/archive/master.zip
RUN unzip /home/odoo/custom-addons/master.zip -d  /home/odoo/custom-addons
RUN rm /home/odoo/custom-addons/master.zip
RUN echo "hola mundo" > /tmp/test/hola_mundo.txt
RUN echo "hola mundo" > /mnt/extra-addons/hola_mundo_addons.txt
RUN echo "hola mundo" > /var/lib/odoo/hola_mundo_addons.txt
