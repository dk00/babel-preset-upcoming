import
  tape: test
  '@babel/core': {transform}
  '../lib/index': babel-preset-upcoming

function transform-options
  options = babelrc: false presets: [babel-preset-upcoming]

function work-around-object-spread t
  code = 'const {b, c: d, e=2, f: g=3, ...h} = q()'
  result = void
  try result := transform code, transform-options!
  catch
    t.fail e.message
  t.ok result, 'workaround object spread babel/babel#8323\n' + result.code

function main t
  code = 'a?.b'
  options = babelrc: false presets:
    [babel-preset-upcoming {} decorators-legacy: true pipeline-proposal: \minimal]
  result = void
  try result := transform code, options
  catch
    t.fail e.message

  t.ok result, 'transpile with the preset ' + result.code

  work-around-object-spread t

  t.end!

test main
