# solr-quickstart
This Git repository helps you get up and running quickly a Apache Solr 4 installation on OpenShift using Tomcat 7 (JBoss EWS 2.0).

For more informations for installing Solr instance under Tomcat
[wiki.apache.org/solr/SolrTomcat](https://wiki.apache.org/solr/SolrTomcat)

## Running on OpenShift
	rhc app create solr jbossews-2.0 cron --from-code=git://@github.com/rafdegan/solr-quickstart

Default version is Apache Solr 4.10.4, but if you want to install a specific version you can add --env SOLR_VERSION=<version>, for example

	rhc app create solr jbossews-2.0 cron --from-code=git://@github.com/rafdegan/solr-quickstart --env SOLR_VERSION=4.6.1

The Solr Admin Console at:
    
	http://solr-<domainname>.rhcloud.com/
The default username is 'solr' and the password is 'solr'.
Please change the default username and password.

## Changing the default username and password
Edit .openshift/conf/tomcat-users.xml. Replace attribute values username and password of <user>

	<user username="xxx" password="xxx" roles="manager-gui,solr_admin"/>

##Solr Cores
* collection1 is created using the example collection found within the binary distribution 
* drupal is created using Solr configuration found within Apache Solr Search of Drupal module

###Conf Apache Solr Search environment in Drupal
Replace Solr server URL

	http://username:password@solr-<domainname>.rhcloud.com/drupal

##Notice
Only it works with version 4.x.x
