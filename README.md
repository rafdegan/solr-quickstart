# solr-quickstart
This Git repository helps you get up and running quickly a Apache Solr 4 installation on OpenShift using Tomcat 7 (JBoss EWS 2.0)

## Running on OpenShift

	rhc app create solr jbossews-2.0 cron --from-code=git://@github.com/rafdegan/solr-quickstart

The Solr Admin URL at:
    
	http://solr-<domainname>.rhcloud.com/

The default username is 'solr' and the password is 'solr'.
Please change the default username and password.

##Solr Cores

* collection1 is created using the example collection found within the binary distribution 
* drupal is created using Solr configuration found within Apache Solr Search of Drupal module

###Conf Apache Solr Search environment

Replace Solr server URL

	http://username:password@solrws-<domainname>.rhcloud.com/drupal

## Changing the default username and password
Edit .openshift/conf/tomcat-users.xml. Replace attribute values username and password of <user>

	<user username="xxx" password="xxx" roles="manager-gui,solr_admin"/>

## Version
Apache Solr 4.10.4

## Notice
It does not scale