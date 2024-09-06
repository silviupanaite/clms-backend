# CLMS backend (Plone 6)

Development docker image for CLMS.

Use it as a part of `clms-frontend`

```bash
git clone git@github.com:eea/clms-frontend.git
cd clms-frontend
git submodule init
git submodule update
ln -s docker-compose.example.yml docker-compose.override.yml
docker compose up -d backend
```

This will start the backend in "hanged" mode. To use it, you need to enter the shell:

```sh
docker compose exec backend bash
```

In the container, in the `/app` folder, you need to fetch the development packages:

```bash
bin/mxdev -c sources.ini
bin/pip install -r requirements-mxdev.txt
```

You'll have to fix the permissions for the source folder:

```bash
chown -R (whoami) eea.docker.plone.clms/sources
```

In the container, in the `/app` folder, then you can start the Plone server:

```bash
./docker-entrypoint.sh start
```
