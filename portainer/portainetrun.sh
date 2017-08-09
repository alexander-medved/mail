#!/bin/bash
docker run -d \
	--name portainer \
	--publish 9000:9000 \
	--restart always \
	-v /root/mail/portainer/data:/data \
	-v /var/run/docker.sock:/var/run/docker.sock \
	portainer/portainer \
	--admin-password '$2y$05$.pVJpN/NHhfnR3hUVG4phOj6D/6zEQcnY6Cwj6X.BYgHrCWuRMsaO'
