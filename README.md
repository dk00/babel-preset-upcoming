# babel-preset-upcoming

Babel preset for upcoming plugins

[![CircleCI](https://circleci.com/gh/dk00/babel-preset-upcoming.svg?style=svg)](https://circleci.com/gh/dk00/babel-preset-upcoming)
[![npm](https://img.shields.io/npm/v/babel-preset-upcoming.svg)](https://npm.im/babel-preset-upcoming)
[![dependencies](https://david-dm.org/dk00/babel-preset-upcoming/status.svg)](https://david-dm.org/dk00/babel-preset-upcoming)

Similar to [@babel/preset-stage-0](https://babeljs.io/docs/en/next/babel-preset-stage-0.html), without `You must pass the "decoratorsLegacy": true option`, `You must pass the 'pipelineProposal' option`, and all future errors.

Plugin dependencies are fixed in this preset, and before upgrading, we will ensure all required plugin options have default value, so that upgrading this preset won't break your builds.

Default options is also more aggressive:

```js
{loose: true, useBuiltIns: true, pipelineProposal: 'minimal'}
```

Class properties and decorators are not included.

## Install

Using npm:

```sh
npm install --save-dev babel-preset-upcoming
```

## Options

```js
{
  //Top level options will be applied to all applicable plugins
  loose: true,
  useBuiltIns: true,
  pipelineProposal: true,

  //Plugin specific options overrides others
  '@babel/proposal-object-rest-spread': {
    loose: true
  }
}
```
