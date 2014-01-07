# Installs PostgreSQL 9.3 with PostGIS and the contrib package
# from the official PSQL apt repository.
# (contrib contains useful things like the pg_trgm extension)

postgresql-9.3:
    pkg:
        - installed
        - require:
            - cmd: postgresql-apt

postgresql-client-9.3:
    pkg:
        - installed
        - require:
            - cmd: postgresql-apt

postgresql-contrib-9.3:
    pkg:
        - installed
        - require:
            - cmd: postgresql-apt

postgresql-9.3-postgis-2.1:
    pkg:
        - installed
        - require:
            - cmd: postgresql-apt

postgresql-9.3-postgis-2.1-scripts:
    pkg:
        - installed
        - require:
            - cmd: postgresql-apt

postgresql-apt:
    cmd.script:
        - source: salt://scripts/apt.postgresql.org.sh
        - user: root
        - shell: /bin/bash
        - unless: "[ -f /etc/apt/sources.list.d/pgdg.list ]"

