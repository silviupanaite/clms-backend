FROM eeacms/plonesaas:5.2.4-61

COPY site.cfg /plone/instance/
RUN gosu plone buildout -c site.cfg
