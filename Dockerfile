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
RUN curl -LOk  https://github.com/MatiasJAco/odoo-dockerfile-experiment/archive/master.zip -o /tmp/master.zip
RUN apt-get install zip -y 
RUN unzip /tmp/master.zip -d /tmp
RUN cp /tmp/myconferences /home/odoo/custom-addons/myconferences
RUN echo "hola mundo" > /tmp/test/hola_mundo.txt
RUN echo "hola mundo" > /mnt/extra-addons/hola_mundo_addons.txt
RUN echo "hola mundo" > /var/lib/odoo/hola_mundo_addons.txt
