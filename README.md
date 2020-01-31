# macup-node

A [macup](https://github.com/eeerlend/macup-builder) module that enables you to easily install global NodeJS packages using NPM.

## Installation
Run the following command to add it to your repo
```bash
npm install eeerlend/macup-npm
```

## Configuration
Add **npm** to the **macup_packages** array in my.config
```bash
macup_packages+=(
  npm
)
```

Add NPM packages to the **macup_npm_packages** array to be managed globally by NPM. Node is installed via Homebrew if it's not already installed. Homebrew is also installed if it's not already installed. All global packages are then listed. Finally, packages that are outdated are highlighted.

```bash
macup_npm_packages+=(
  yarn@berry
)
```
