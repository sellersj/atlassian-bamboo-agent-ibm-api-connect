FROM actis/atlassian-bamboo-agent

# nodejs instructions
# https://nodejs.org/en/download/package-manager/

# Update system & install dependencies
RUN \
 #yum -y update && \
    curl -sL https://rpm.nodesource.com/setup_8.x | bash - && \
	yum -q -y install nodejs npm && \
	yum -q -y clean all
    
# install the ibm api connect
# https://www.ibm.com/support/knowledgecenter/SSFS6T/com.ibm.apic.toolkit.doc/tapim_cli_install.html
RUN npm config -g set strict-ssl false && \
	npm install -g apiconnect
    
# Do we have to install "toolkit from a Management server" ?
