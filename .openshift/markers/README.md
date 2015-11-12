Markers Tomcat (JBossEWS)
===========

Adding marker files to this directory will have the following effects:

enable_jpda - Will enable the JPDA socket based transport on the java virtual machine running the Tomcat server. This enables you to remotely debug code running inside Tomcat.

skip_maven_build - Maven build step will be skipped

force_clean_build - Will start the build process by removing all non-essential Maven dependencies. Any current dependencies specified in your pom.xml file will then be re-downloaded.

hot_deploy - Will prevent a JBoss container restart during build/deployment. Newly build archives will be re-deployed automatically by the JBoss HDScanner component.

java7 - Will run Tomcat with Java7 if present. If no marker is present then the baseline Java version will be used (currently Java6)

disable_auto_scaling - Will prevent scalable applications from scaling up or down according to application load.

-------------------------------------------------------------------------------
For information about markers, consult the documentation:

https://docs.openshift.org/origin-m4/oo_user_guide.html#using-cartridges
https://docs.openshift.org/origin-m4/oo_cartridge_guide.html#markers-3

https://blog.openshift.com/manual-scaling-on-openshift-using-marker-files/
https://access.redhat.com/documentation/en-US/OpenShift/2.0/html-single/REST_API_Guide/index.html
https://blog.openshift.com/scaling-in-action-on-openshift/
