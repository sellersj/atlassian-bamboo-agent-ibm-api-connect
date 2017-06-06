FROM pitta/jdk8-node6-git-apic

# Preparing agent environment
WORKDIR /root

COPY bamboo-agent.sh /root/bamboo-agent.sh
COPY bamboo-capabilities.properties /root/bamboo-capabilities.properties

#USER bamboo-agent
ENTRYPOINT ["/bin/bash", "-c", "/root/bamboo-agent.sh"]