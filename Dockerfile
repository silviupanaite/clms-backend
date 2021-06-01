FROM eeacms/plonesaas:5.2.4-20

COPY site.cfg /plone/instance/
RUN gosu plone buildout -c site.cfg
