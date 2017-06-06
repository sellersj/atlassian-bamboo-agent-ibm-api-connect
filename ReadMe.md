# Atlassian Bamboo agent with ability to run IBM API Connect commands on host
This installation allows to execute api connect commands on container host. To properly
run this agent use the following command line:

```
docker run -h remote-agent-name-to-display -d --restart=always -e BAMBOO_SERVER=http://your.bamboo.server/ sellersj/atlassian-bamboo-agent-ibm-api-connect
```

You can also pass environment variable BAMBOO_AGENT_CAPABILITY with content formatted as JAVA property (property=value) which will be added to agent capabilities.

This is modified from https://github.com/Actis/docker-atlassian-bamboo-agent