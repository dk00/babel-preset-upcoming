plugin-options =
  '@babel/proposal-function-bind': void
  '@babel/proposal-do-expressions': void
  '@babel/proposal-export-default-from': void
  '@babel/proposal-nullish-coalescing-operator': loose: true
  '@babel/proposal-optional-chaining': loose: true
  '@babel/proposal-pipeline-operator': proposal: \minimal
  '@babel/proposal-export-namespace-from': void
  '@babel/proposal-function-sent': void
  '@babel/proposal-numeric-separator': void
  '@babel/proposal-throw-expressions': void
  '@babel/proposal-async-generator-functions': void
  '@babel/proposal-object-rest-spread':
    loose: false use-built-ins: true
  '@babel/proposal-optional-catch-binding': void
  '@babel/proposal-unicode-property-regex': void
  '@babel/syntax-dynamic-import': void
  '@babel/syntax-import-meta': void

function override-options name, plugin-options, options
  global-overrides = Object.keys plugin-options
  .filter -> it of options
  .map -> (it): options[it]

  Object.assign {} plugin-options, ...global-overrides, options[name]

function preset api, options
  plugins: Object.entries plugin-options .map ([name, plugin-options]) ->
    if plugin-options || name of options
      [name, override-options name, plugin-options, options]
    else name

export default: preset
