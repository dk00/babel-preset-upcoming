import
  tape: test
  '@babel/core': {transform}
  '../lib/index': babel-preset-upcoming

function main t
  code = 'a?.b'
  options = babelrc: false presets:
    [babel-preset-upcoming {} decorators-legacy: true pipeline-proposal: \minimal]
  result = void
  try result := transform code, options
  catch
    t.fail e.message

  t.ok result, 'transpile with the preset ' + result.code

  t.end!

test main
