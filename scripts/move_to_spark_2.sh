#!/bin/bash

set +x

svp="\${scala\.version\.prefix}"
substitution_cmd="s/_$svp/-spark2_$svp/g"

find . -name "pom.xml" -exec sed \
    -e "/utils-/ $substitution_cmd" \
    -e "/adam-/ $substitution_cmd" \
    -e "/spark.version/ s/1.6.3/2.0.0/g" \
    -i.spark2.bak '{}' \;
