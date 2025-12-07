#!/bin/bash

# Local build script for testing documentation
# Builds the site to mockup/ folder for local browsing

set -e

echo "Building documentation to mockup/ folder..."

# Check if Jekyll is installed
if ! command -v jekyll &> /dev/null; then
    echo "❌ Jekyll not found."
    echo "Please see README.md for installation instructions for your OS."
    exit 1
fi

# Remove old mockup
rm -rf mockup/

# Build with Jekyll
cd wiki-default
jekyll build -d ../mockup -s . --config _config.yml

cd ..

# Get absolute path to mockup folder
MOCKUP_PATH="$(cd mockup && pwd)/index.html"

echo ""
echo "✓ Build complete!"
echo ""
echo "To view the site locally, open this URL in your browser:"
echo "  file://${MOCKUP_PATH}"
echo ""
echo "  2. Or start a local server:"
echo "     cd mockup && python3 -m http.server 8000"
echo "     Then visit: http://localhost:8000"
echo ""
