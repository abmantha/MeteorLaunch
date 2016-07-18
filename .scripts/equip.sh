#!/bin/sh

chmod -R 777 $PWD

echo "Equipping Meteor Launch Codes..."

CLIENT=$PWD'/client'
SERVER=$PWD'/server'

IMPORTS=$PWD'/imports'
STARTUP=$IMPORTS/'startup'
IMPORTS_CLIENT=$STARTUP/'client'
IMPORTS_SERVER=$STARTUP/'server'

API=$IMPORTS/'api'
UNIT=$API/'unit'
UNIT_SERVER=$UNIT/'server'
UNIT_DEFINITION=$UNIT/'unit.js'
UNIT_DEFINITION_TESTS=$UNIT/'unit.tests.js'
UNIT_METHODS=$UNIT/'methods.js'
UNIT_METHODS_TESTS=$UNIT/'methods.tests.js'

UI=$IMPORTS/'ui'
COMPONENTS=$UI/'components'
LAYOUTS=$UI/'layouts'
PAGES=$UI/'pages'

folders=($CLIENT $SERVER $IMPORTS $STARTUP $IMPORTS_CLIENT $IMPORTS_SERVER $API $UNIT $UNIT_SERVER $UI $COMPONENTS $LAYOUTS $PAGES)
for folder in "${folders[@]}"
  do 
    mkdir $folder
  done

touch $CLIENT/'main.js'
touch $SERVER/'main.js'
touch $IMPORTS_CLIENT/'index.js'
touch $IMPORTS_CLIENT/'routes.js'
touch $IMPORTS_CLIENT/'useraccounts-configuration.js'
touch $SERVER/'fixtures.js'
touch $SERVER/'index.js'
touch $UNIT_SERVER/'publications.js'
touch $UNIT_SERVER/'publications.tests.js'

echo "Meteor Launch Codes have been equipped."
