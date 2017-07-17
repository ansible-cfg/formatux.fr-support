#!/bin/bash

# Augmente la memoire disponible de la JVM
export MAVEN_OPTS="-Xmx1024m"

# Lance le build avec mvn (maven)
# Configuration dans pom.xml
mvn
