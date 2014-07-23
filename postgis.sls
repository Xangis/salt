# DO NOT USE THIS: THE REPOSITORY IS FOR POSTGRES 9.1.

# Installs PostGIS. PostgreSQL 9.3 must be installed first.

postgresql-9.3-postgis-2.1:
    pkg:
        - installed
        - require:
            - cmd: postgis-ppa

postgresql-9.3-postgis-2.1-scripts:
    pkg:
        - installed
        - require:
            - cmd: postgis-ppa

geos:
    pkg:
        - installed
        - require:
            - cmd: postgis-ppa

gdal:
    pkg:
        - installed
        - require:
            - cmd: postgis-ppa

proj:
    pkg:
        - installed
        - require:
            - cmd: postgis-ppa

postgis-ppa:
    cmd.run:
        - name: "add-apt-repository ppa:ubuntugis/ppa && apt-get update"
        - unless: "[ -f /etc/apt/sources.list.d/ubuntugis-{{ grains['oscodename'] }}.list ]"

