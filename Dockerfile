FROM eeacms/plonesaas:5.2.2-2

COPY site.cfg /plone/instance/
RUN gosu plone buildout -c site.cfg
