FROM pitta/jdk8-node6-git-apic

ENV HOME /home/bamboo
RUN useradd --create-home --home-dir $HOME bamboo \
&& chown -R bamboo:bamboo $HOME


USER bamboo

# Preparing agent environment
WORKDIR /home/bamboo

RUN mkdir -p bin

COPY bamboo-agent.sh $HOME/
COPY bamboo-capabilities.properties $HOME/bin/bamboo-capabilities.properties

# accepting the license for the current (bamboo) user 
RUN apic --accept-license --disable-analytics

#USER bamboo-agent
ENTRYPOINT ["/bin/bash", "-c", "$HOME/bamboo-agent.sh"]