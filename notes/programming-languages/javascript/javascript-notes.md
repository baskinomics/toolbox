# JavaScript Notes

# Glossary of Terms

```
NodeJS     → JavaScript Runtime
→ npm      → Node package manager
Babel      → ES6 compiler. Runtime?
→ core
→ cli
Yarn       → Replacement for npm
Webpack    → Asset bundler (package app files for distribution)
TypeScript → OOP-based language transpiled to JS
React      → Library for building UIs
Redux      → State library
```

## Resources

This section contains useful links that I found myself referencing frequently or solutions to issues I encountered:

- [`yarn` packages](https://yarnpkg.com/en/packages) - Search yarn packages.
- [`yarn global` docs](https://yarnpkg.com/lang/en/docs/cli/global/)
- [https://github.com/gaearon/react-hot-loader](https://github.com/gaearon/react-hot-loader)
- [Flexible Toolchains](https://reactjs.org/docs/create-a-new-react-app.html#more-flexible-toolchains) - This resource provided the conceptional foundation for JavaScript toolchains.
- [Blog  - Creating a React app from scratch](https://blog.usejournal.com/creating-a-react-app-from-scratch-f3c693b84658)
- [Webpack Concepts](https://webpack.js.org/concepts)
- [Webpack Guides](https://webpack.js.org/guides)

## Toolchain

The JavaScript toolchain is composed of a runtime, package manager, compiler, and bundler.

### NodeJS

The first step in this process is to install the NodeJS runtime.

```bash
sudo apt install -y node
```

### Yarn
```bash
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update && sudo apt-get install yarn
```

### Babel
```bash
# TODO Make these global
yarn add @babel/core
yarn add @babel/cli
```

### Webpack

## Editor Setup
Currently using the [Atom](https://atom.io/) text editor with the following packages and configurations:

```bash
# Tern integration with Atom
# https://github.com/tststs/atom-ternjs
apm install atom-ternjs

# TODO - .tern-project file


# Linter
# https://github.com/AtomLinter/linter-eslint
apm install linter-eslint

# Babel support
apm install language-babel

# Pigments package to display colors in project and files
apm install pigments
```
