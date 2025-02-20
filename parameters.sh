# This file is for config variables, and is designed to be sourced by the buildpack scripts.

# jmeter setup
# Latest releases available at https://dlcdn.apache.org/jmeter/binaries/
JMETER_VERSION="5.6.3"
JMETER_ARCHIVE=apache-jmeter-${JMETER_VERSION}.tgz
JMETER_URL=https://dlcdn.apache.org//jmeter/binaries/${JMETER_ARCHIVE}
JMETER_DIR=apache-jmeter-${JMETER_VERSION}
# The name of the jmeter dir in the actual build of the app
JMETER_BUILD_DIR=jmeter
