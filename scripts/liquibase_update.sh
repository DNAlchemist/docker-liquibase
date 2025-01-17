#!/bin/bash
: ${CHANGELOG_FILE:="changelogs.xml"}

echo "Applying changes to the database. Changelog: $CHANGELOG_FILE"
liquibase --logLevel="debug" --changeLogFile="$CHANGELOG_FILE" update
