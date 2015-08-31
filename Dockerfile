FROM selenium/standalone-chrome

USER root

# Install NodeJS Version 0.12
RUN apt-get update \
  && apt-get install -y --force-yes --no-install-recommends \
    curl \
    build-essential \
  && curl -sL https://deb.nodesource.com/setup_0.12 | bash - \
  && apt-get install -y --force-yes --no-install-recommends \
    nodejs

CMD ["/bin/bash"]
