# ReactJS Notes

## Resources
[React Bootstrap](https://react-bootstrap.github.io/)

## Building React Application

### Prerequisite - Runtime
The first step in this process is to install the NodeJS runtime.

```bash
sudo apt install -y node
```

### Prerequisite - Toolchain

#### Package Manager - Yarn
```bash
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update && sudo apt-get install yarn
```
#### Compiler - Babel
```bash
yarn add @babel/core
yarn add @babel/cli
```

#### Bundler - Webpack
```bash
yarn add webpack \
  webpack-cli \
  webpack-dev-server \
  style-loader \
  css-loader \
  babel-loader
```

#### Global Package Installation
```bash
# Install these packages to the local user’s /bin
yarn global add @babel/node \
@babel/core \
@babel/cli \
--prefix $HOME
```

## Project Scaffolding

```bash
mkdir resume-react
cd resume-react/

# Add Babel packages
yarn add @babel/node
yarn add @babel/core
yarn add @babel/cli
yarn add @babel/preset-env
yarn add @babel/preset-react

# Create root project assets
# cat package.json
mkdir public src
touch public/index.html

# babel.rc configuration
touch .babelrc

# Configure webpack
yarn add webpack
yarn add webpack-cli
yarn add webpack-dev-server
yarn add style-loader
yarn add css-loader
yarn add babel-loader

# One-liner
yarn add webpack \
  webpack-cli \
  webpack-dev-server \
  style-loader \
  css-loader \
  babel-loader

# Webpack config
# const path = require("path");
# const webpack = require("webpack");
#
# module.exports = {
#   entry: "./src/index.js",
#   mode: "development",
#   module: {
#     rules: [
#       {
#         test: /\.(js|jsx)$/,
#         exclude: /(node_modules)/,
#         loader: "babel-loader",
#         options: { presets: ["@babel/env"] }
#       },
#       {
#         test: /\.css$/,
#         use: ["style-loader", "css-loader"]
#       }
#     ]
#   },
#   resolve: { extensions: ["*", ".js", ".jsx"] },
#   output: {
#     path: path.resolve(__dirname, "dist/"),
#     publicPath: "/dist/",
#     filename: "bundle.js"
#   },
#   devServer: {
#     contentBase: path.join(__dirname, "public/"),
#     port: 3000,
#     publicPath: "http://localhost:3000/dist/",
#     hotOnly: true
#   },
#   plugins: [new webpack.HotModuleReplacementPlugin()]
# };
touch webpack.config.js

# Add React and associated packages
yarn add react react-dom

# Implement React components
touch src/index.js
touch src/App.js
touch src/App.css

# One-liner
touch src/index.js touch src/App.js touch src/App.css

# Hotloader
yarn add react-hot-loader

# React Bootstrap
```
