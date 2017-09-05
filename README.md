![build status](https://travis-ci.org/M6Web/eslint-config-m6web.svg?branch=master)

## Setup

```shell
npm install
```

or 

```shell
yarn
```

## Usage

```json
{
  "extends": "m6web"
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
