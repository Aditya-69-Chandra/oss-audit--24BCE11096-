 #!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Composing the paragraph
echo "--- Open Source Manifesto ---" > "$OUTPUT"
echo "Created on: $DATE" >> "$OUTPUT"
echo "I believe that software like $TOOL is essential for progress." >> "$OUTPUT"
echo "To me, the heart of open source is $FREEDOM." >> "$OUTPUT"
echo "In the spirit of sharing, I commit to building $BUILD for the community." >> "$OUTPUT"

echo "Manifesto saved to $OUTPUT"
cat "$OUTPUT"
