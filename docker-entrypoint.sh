#!/bin/bash

set -e

# no parameter
if [[ ! $1 ]]; then
    bin="/elasticsearch-jdbc/bin"
    lib="/elasticsearch-jdbc/lib"
    java \
        -cp "${lib}/*" \
        -Dlog4j.configurationFile=${bin}/log4j2.xml \
        org.xbib.tools.Runner \
        org.xbib.tools.JDBCImporter \
        /statefile.json
else
    exec "$@"
fi
