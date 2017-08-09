#!/bin/bash
docker run -d \
	--name registrator \
	--link consul:consul \
	--volume=/var/run/docker.sock:/tmp/docker.sock \
	gliderlabs/registrator:latest \
	-tags="MAIL" consul://consul:8500
