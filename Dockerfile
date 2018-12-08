FROM quay.io/clrxbl/docker-elasticsearch:6.5.2

MAINTAINER michael@eth0.co

# Override config, otherwise plug-in install will fail
ADD config /elasticsearch/config

# Set environment
ENV DISCOVERY_SERVICE elasticsearch-discovery

# Kubernetes requires swap is turned off, so memory lock is redundant
ENV MEMORY_LOCK false
