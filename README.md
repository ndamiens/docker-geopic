# Installation

```
git clone https://github.com/geopicardie/osm-geopic-docker.git osm
cd osm
sudo setup.sh
docker-compose up -d
```

Note: Ne pas lancer haproxy et ssl, ils ont besoin d'un certificat let's encrypt pour ce lancer.

# Mise à jour data openstreetmap

C'est fait au premier lancement, pour le refaire plus tard

```
docker-compose exec db bash
setup update_db
```

On peut utiliser une autre région en remplaçant la variable d'environnement "OSM\_PBF" dans docker\_compose.yml.

# Mise à jour du cache

On peut utiliser le seed de mapproxy

(à confirmer)
```
docker-compose exec mapproxy bash
mapproxy-seed -s /root/seed_base.yaml -f /srv/mapproxy/mapproxy.yaml
```

On peut rajouter -c 8 pour paraléliser le calcul des seeds, mais ce n'est pas efficace sur tout les traitements

# reconstruire un des container

par exemple pour mapproxy:

```
docker-compose up -d --build mapproxy
```

# Demanderi/renouveller un certificat HTTPS

TODO
