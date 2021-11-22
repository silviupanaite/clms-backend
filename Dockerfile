FROM eeacms/plone:5.2.4-64

COPY site.cfg /plone/instance/
RUN gosu plone buildout -c site.cfg
