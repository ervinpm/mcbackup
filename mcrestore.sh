#!/bin/bash

# Declare default values
PRESERVE_CURRENT="y"
BACKUP_NUMBER="1"

read -p "Enter backup number (1-7):" BACKUP_NUMBER
echo ""

read -p "Preserve current world? (Y/n)" PRESERVE_CURRENT
echo ""

if [[ $PRESERVE_CURRENT == "y" || $PRESERVE_CURRENT == "Y" || $PRESERVE_CURRENT == "" ]]; then
    echo "Preserving current world ..."
    mv ~/mcserver/world ~/mcserver/world-bak
else
    echo "Overriding current world ..."
    rm -rf ~/mcserver/world
fi

echo "Restoring backup minecraft-day-$BACKUP_NUMBER.7z..."
7z x -oextracted minecraft-day-$BACKUP_NUMBER.7z
mv ~/mcbackups/extracted/world ~/mcserver/world

echo "Restore complete!"
