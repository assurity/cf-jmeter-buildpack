# This file is for config variables, and is designed to be sourced by the buildpack scripts.

# jmeter setup
# Latest releases available at https://dlcdn.apache.org/jmeter/binaries/
JMETER_VERSION="5.6.3"
JMETER_ARCHIVE=apache-jmeter-${JMETER_VERSION}.tgz
JMETER_URL=https://dlcdn.apache.org//jmeter/binaries/${JMETER_ARCHIVE}
JMETER_DIR=apache-jmeter-${JMETER_VERSION}
# The name of the jmeter dir in the actual build of the app
JMETER_BUILD_DIR=jmeter

# jmeter plugins setup
JMETER_PLUGINS_BASE_URL=https://jmeter-plugins.org/files/packages/
JMETER_PLUGINS=("websocket-samplers-1.2.10.zip" "jpgc-casutg-2.10.zip" "bzm-random-csv-0.8.zip" "jpgc-dummy-0.4.zip" "jpgc-prmctl-0.4.zip" "jpgc-wsc-0.7.zip")



# Variables from CSV File v0.1
# https://jmeter-plugins.org/files/packages/jpgc-csvars-0.1.zip

# java setup
# Using the Bellsoft Liberca Open JRE, latest releases available at: https://bell-sw.com/pages/downloads/
JAVA_VERSION="8u442+7"
JAVA_ARCHIVE=bellsoft-jre${JAVA_VERSION}-linux-amd64-full.tar.gz
JAVA_URL=https://download.bell-sw.com/java/${JAVA_VERSION}/${JAVA_ARCHIVE}
JAVA_DIR=jre8u442-full
# The name of the java dir in he actual build of the app
JAVA_BUILD_DIR=java

# AWS CLI setup
# Instructions on how to install at: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
AWS_CLI_ARCHIVE=awscliv2.zip
AWS_CLI_URL=https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
AWS_CLI_DIR=aws
# The name of the aws cli dir in the actual build of the app
AWS_CLI_BUILD_DIR=aws-cli
