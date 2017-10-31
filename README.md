![build status](https://travis-ci.org/M6Web/eslint-config-m6web.svg?branch=master)

## Setup

```shell
npm install --save-dev eslint eslint-config-m6web
```

or 

```shell
yarn add --dev eslint eslint-config-m6web
```

## Usage

Extends the configuration in the `.eslintrc` file at the root of your project.
```json
{
  "extends": "m6web",
  "rules": {
    // Additional, per-project rules...
  }
}
```

Here are some envs you can add depending your project:
```json
"env": {
  "browser" : true,
  "jasmine": true
}
```

## Test

```shell
yarn lint
```

## Release

```shell
yarn release -- <version>
```
