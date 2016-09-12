# Set base image
FROM node:6.1.0-slim
MAINTAINER Francesco Benigno <francesco.benigno@sparkfabrik.com>

# Set variables
ENV LOCKE_VERSION 1.0.0
ENV LOCKE_INSTALL_DIR /srv/locke
ENV PORT=80

# Get Locke from Github repository
RUN cd /tmp \
    && curl -SLO "https://github.com/sparkfabrik/Locke/archive/$LOCKE_VERSION.tar.gz" \
    && mkdir -p $LOCKE_INSTALL_DIR \
    && tar -xzf "$LOCKE_VERSION.tar.gz" -C $LOCKE_INSTALL_DIR --strip-components=1 \
    && rm "$LOCKE_VERSION.tar.gz"

# Install Locke and his dependencies
WORKDIR $LOCKE_INSTALL_DIR
RUN npm install

# Expose port 80
EXPOSE 80

# Let's go
CMD ["npm", "start"]
