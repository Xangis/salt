nginx:
    pkg:
        - installed
        - service:
            - running
        - require:
            - cmd: nginx-ppa

nginx-ppa:
    cmd.run:
        - name: "add-apt-repository ppa:nginx/stable && apt-get update"
        - unless: "[ -f /etc/apt/sources.list.d/nginx-stable-{{ grains['oscodename'] }}.list ]"

