#!/bin/bash
docker run -d \
	--name consul \
	--publish 8500:8500 \
	-h consul \
	progrium/consul \
	-server \
	-bootstrap \
	-ui-dir /ui
