# ld-decode Documentation

This is the ld-decode documentation repository containing the source for the project's GitHub Pages documentation site (formerly known as the 'wiki').

## Links

- **📖 Live Documentation**: [ld-decode Documentation](https://simoninns.github.io/ld-decode-doc-test/)
- **💾 Main Project**: [ld-decode GitHub](https://github.com/happycube/ld-decode)

## Contributing

PRs to this repository are automatically deployed to the GitHub Pages documentation site, providing a mechanism for contributors to add new documentation and make corrections to existing content.

> [!Important]
> If possible test your changes locally before submitting a PR (see instructions below)

## Testing Changes Locally

### Testing Prerequisites - Ubuntu (24.04 LTS and later)

```bash
# Update package manager
sudo apt update

# Install Ruby and dependencies
sudo apt install -y ruby-full build-essential zlib1g-dev

# Install Jekyll, bundler, and Cayman theme
sudo gem install jekyll bundler jekyll-theme-cayman
```

#### Testing Prerequisites - Fedora (43 and later)

```bash
# Install Ruby and dependencies
sudo dnf install -y ruby ruby-devel gcc gcc-c++ make redhat-rpm-config zlib-devel

# Install Jekyll, bundler, and Cayman theme
sudo gem install jekyll bundler jekyll-theme-cayman
```

### Building the Site Locally

```bash
# Build documentation to mockup/ folder
./build-local.sh
```

This creates a `mockup/` folder with the built site ready for local testing.

### Adding or Editing Documentation

You can add plain Markdown files under `wiki-default/` without any front matter. The build pipeline automatically copies the files into a temporary workspace and injects minimal front matter so Jekyll will render them to HTML. Your source files stay untouched in the repository.

### Viewing the Site

Simply open the built site in your browser:

```bash
# Get the full path to the mockup folder
pwd  # note this path, e.g., /home/user/ld-decode-doc-test

# Then in your browser address bar, navigate to a location similar to:
file:///home/user/ld-decode-doc-test/mockup/index.html
```

Or use your file manager to navigate to the `mockup/` folder and double-click `index.html`.

### Important Notes

- The `mockup/` folder is in `.gitignore` - it will never be committed
- All `.md` files in wiki-default must have Jekyll front matter (see above)
- Always build locally before pushing changes
- The navigation sidebar must not contain external links (validation enforced by CI)
- Use relative links for internal documentation pages

