# This file is for config variables, and is designed to be sourced by the buildpack scripts.

# jmeter setup
# Latest releases available at https://dlcdn.apache.org/jmeter/binaries/
JMETER_VERSION="5.6.3"
JMETER_ARCHIVE=apache-jmeter-${JMETER_VERSION}.tgz
JMETER_URL=https://dlcdn.apache.org//jmeter/binaries/${JMETER_ARCHIVE}
JMETER_DIR=apache-jmeter-${JMETER_VERSION}
# The name of the jmeter dir in the actual build of the app
JMETER_BUILD_DIR=jmeter

# java setup
# Using the Bellsoft Liberca Open JRE, latest releases available at: https://bell-sw.com/pages/downloads/
JAVA_VERSION="8u442+7"
JAVA_ARCHIVE=bellsoft-jre${JAVA_VERSION}-linux-amd64-full.tar.gz
JAVA_URL=https://download.bell-sw.com/java/${JAVA_VERSION}/${JAVA_ARCHIVE}
JAVA_DIR=jre8u442-full
# The name of the java dir in he actual build of the app
JAVA_BUILD_DIR=java