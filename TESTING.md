# Testing Documentation Locally

This repository uses GitHub Pages for the live documentation site. When you're working on a **branch**, the changes won't automatically deploy to GitHub Pages. Instead, you can test them locally.

## Building Locally

### Quick Start

```bash
./build-local.sh
```

This will:
1. Build the site using Jekyll
2. Output the result to `mockup/` folder
3. Show you how to view it

### Viewing the Built Site

**Option 1: Direct file opening** (simplest)
```bash
open mockup/index.html
```

**Option 2: Local HTTP server** (recommended for testing links)
```bash
cd mockup
python3 -m http.server 8000
```
Then visit: `http://localhost:8000` in your browser

## Requirements

You need Jekyll installed. If not already installed:

```bash
gem install jekyll bundler
```

## Git Notes

The `mockup/` folder is in `.gitignore` - it will never be committed to the repository. It's safe to build locally without worrying about accidental commits.

## Workflow Behavior

- **`main` branch**: Automatically deploys to GitHub Pages on every push
- **Other branches**: Build locally for testing using `./build-local.sh`
- **Validation**: External links in navigation are blocked (must use internal links)

## Publishing to GitHub Pages

Once you're happy with your changes:
1. Create a pull request
2. Ask for review
3. Merge to `main`
4. The workflow automatically deploys the updated site
