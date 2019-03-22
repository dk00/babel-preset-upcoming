function preset api, {
  loose=true
  use-built-ins=true
  proposal=\smart
  ...overrides
}
  plugin = (name, options) ->
    instance = require.resolve name
    if options || name of overrides
      * instance
        Object.assign {} options, overrides[name]
    else instance

  plugins:
    plugin '@babel/plugin-proposal-function-bind'
    plugin '@babel/plugin-proposal-do-expressions'
    plugin '@babel/plugin-proposal-export-default-from'
    plugin '@babel/plugin-proposal-nullish-coalescing-operator' {loose}
    plugin '@babel/plugin-proposal-optional-chaining' {loose}
    plugin '@babel/plugin-proposal-partial-application'
    plugin '@babel/plugin-proposal-pipeline-operator' {proposal}
    plugin '@babel/plugin-proposal-export-namespace-from'
    plugin '@babel/plugin-proposal-function-sent'
    plugin '@babel/plugin-proposal-numeric-separator'
    plugin '@babel/plugin-proposal-throw-expressions'
    plugin '@babel/plugin-proposal-async-generator-functions'
    plugin '@babel/plugin-proposal-object-rest-spread' {use-built-ins}
    plugin '@babel/plugin-proposal-optional-catch-binding'
    plugin '@babel/plugin-proposal-unicode-property-regex'
    plugin '@babel/plugin-syntax-dynamic-import'
    plugin '@babel/plugin-syntax-import-meta'

export default: preset
