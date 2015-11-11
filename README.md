# solr-quickstart
This Git repository helps you get up and running quickly w/ a Apache Solr 4 installation on OpenShift using Tomcat 7 (JBoss EWS 2.0).

## Running on OpenShift
```
rhc app create solr jbossews-2.0 --from-code=git://@github.com/rafdegan/solr-quickstart
```
That's it, you can now checkout your application  at 
    
    http://solr-<domainname>.rhcloud.com/

The default user is 'solr' and the password is 'solr'.
Please change the default password.

## Notice
It does not scale

## Support
Any use is at your own risk.



