#!/bin/bash

# Local build script for testing documentation
# Builds the site to mockup/ folder for local browsing

set -e

echo "Building documentation to mockup/ folder..."

# Check if Jekyll is installed
if ! command -v jekyll &> /dev/null; then
    echo "❌ Jekyll not found. Please install Jekyll:"
    echo "   gem install jekyll bundler"
    exit 1
fi

# Remove old mockup
rm -rf mockup/

# Build with Jekyll
cd wiki-default
jekyll build -d ../mockup -s . --config _config.yml

cd ..

echo ""
echo "✓ Build complete!"
echo ""
echo "To view the site locally:"
echo "  1. Open in browser: open mockup/index.html"
echo "  2. Or start a local server:"
echo "     cd mockup && python3 -m http.server 8000"
echo "     Then visit: http://localhost:8000"
echo ""
