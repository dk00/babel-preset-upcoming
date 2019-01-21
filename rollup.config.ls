import
  'rollup-plugin-babel': babel
  'rollup-plugin-pnp-resolve': pnp-resolve

config =
  input: 'src/index.ls'
  output: file: 'lib/index.js' format: \cjs use-strict: false
  plugins:
    pnp-resolve!
    babel require './.babelrc'
  external: Object.keys <| require './package.json' .dependencies

export default: config
