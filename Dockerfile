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
RUN cp -r /home/odoo/custom-addons/odoo-dockerfile-experiment-master/myconferences  /home/odoo/custom-addons/myconferences
#COPY /home/odoo/custom-addons/odoo-dockerfile-experiment-master/entrypoint.sh /
RUN rm /home/odoo/custom-addons/master.zip
RUN rm -r /home/odoo/custom-addons/odoo-dockerfile-experiment-master
RUN sed -i 's#/mnt/extra-addons#/mnt/extra-addons,/home/odoo/custom-addons#g' /etc/odoo/odoo.conf
RUN echo "hola mundo" > /tmp/test/hola_mundo.txt
RUN echo "hola mundo" > /mnt/extra-addons/hola_mundo_addons.txt
RUN echo "hola mundo" > /var/lib/odoo/hola_mundo_addons.txt
#ENTRYPOINT ["/entrypoint.sh"]
#CMD ["odoo","-i myconference","-d test-install"]
