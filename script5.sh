#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Alias demonstration (Concept only): alias pyout='cat manifesto.txt'
echo "--- Personal Open Source Manifesto Generator ---"
read -p "1. Which AI tool/library is most vital? " TOOL
read -p "2. Define 'Software Freedom' in one word: " FREEDOM
read -p "3. What AI project would you share with the world? " BUILD
DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_${USER_NAME}.txt"
# Composing the manifesto
{
    echo "OPEN SOURCE MANIFESTO"
    echo "Created by: $USER_NAME on $DATE"
    echo "-------------------------------------------------"
    echo "As a developer, I believe that tools like $TOOL are the"
    echo "foundations of innovation. To me, open source represents"
    echo "$FREEDOM—the ability to learn without barriers."
    echo "I pledge to build $BUILD and share it freely with the"
    echo "community to move the field of AI forward."
    echo "-------------------------------------------------"
} > "$OUTPUT"
echo ""
echo "Manifesto successfully generated in $OUTPUT"
echo "Reading your manifesto below:"
echo ""
cat "$OUTPUT"
