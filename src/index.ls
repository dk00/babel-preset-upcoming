import
  '@babel/plugin-proposal-function-bind': function-bind
  '@babel/plugin-proposal-do-expressions': do-expressions
  '@babel/plugin-proposal-export-default-from': export-default-from
  '@babel/plugin-proposal-nullish-coalescing-operator': nullish-coalescing-operator
  '@babel/plugin-proposal-optional-chaining': optional-chaining
  '@babel/plugin-proposal-pipeline-operator': pipeline-operator
  '@babel/plugin-proposal-export-namespace-from': export-namespace-from
  '@babel/plugin-proposal-function-sent': function-sent
  '@babel/plugin-proposal-numeric-separator': numeric-separator
  '@babel/plugin-proposal-throw-expressions': throw-expressions
  '@babel/plugin-proposal-async-generator-functions': async-generator-functions
  '@babel/plugin-proposal-object-rest-spread': object-rest-spread
  '@babel/plugin-proposal-optional-catch-binding': optional-catch-binding
  '@babel/plugin-proposal-unicode-property-regex': unicode-property-regex
  '@babel/plugin-syntax-dynamic-import': dynamic-import
  '@babel/plugin-syntax-import-meta': import-meta

function fix options
  {loose=true use-built-ins=true pipeline-proposal=\minimal} = options
  if typeof options.pipeline-proposal != \string
    """ Warning: The pipeline operator requires a proposal set.
      'pipelineProposal' option will fallback to #minimal
    """
  {loose, use-built-ins, pipeline-proposal}

function preset api, options
  {loose, use-built-ins, pipeline-proposal} = fix options

  plugins:
    function-bind
    do-expressions
    export-default-from
    * nullish-coalescing-operator, {loose}
    * optional-chaining, {loose}
    * pipeline-operator, proposal: pipeline-proposal
    export-namespace-from
    function-sent
    numeric-separator
    throw-expressions
    async-generator-functions
    * object-rest-spread, {loose, use-built-ins}
    optional-catch-binding
    unicode-property-regex
    dynamic-import
    import-meta

export default: preset
