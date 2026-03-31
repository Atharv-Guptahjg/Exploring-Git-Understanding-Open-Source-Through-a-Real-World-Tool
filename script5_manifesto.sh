#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer a few questions to generate your manifesto."
echo ""

read -p "1. Open-source tool you use daily: " TOOL
read -p "2. What does 'freedom' mean to you (one word)? " FREEDOM
read -p "3. Something you would build and share: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I reflect on open source." > $OUTPUT
echo "Using tools like $TOOL reminds me that software can be shared." >> $OUTPUT
echo "Freedom, to me, means $FREEDOM." >> $OUTPUT
echo "One day, I hope to build $BUILD and share it with others." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
