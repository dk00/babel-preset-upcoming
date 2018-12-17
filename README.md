# babel-preset-upcoming

> Babel preset for upcoming plugins

Similar to [@babel/preset-stage-0](https://babeljs.io/docs/en/next/babel-preset-stage-0.html), without `You must pass the "decoratorsLegacy": true option`, `You must pass the 'pipelineProposal' option`, and all future errors. You'll get warnings instead, Babel works without changing options.

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
