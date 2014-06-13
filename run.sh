#!/bin/bash

## specify distributions to cache from environment variable DISTRIBUTIONS
if [ -n "$DISTRIBUTIONS" ]; then
	echo "Setting up apt-cacher for the following distributions: $DISTRIBUTIONS"
	sed -i -r "s/^ubuntu_release_names = .+/ubuntu_release_names = $DISTRIBUTIONS/" /etc/apt-cacher/apt-cacher.conf
fi

## run the services
cron && apt-cacher