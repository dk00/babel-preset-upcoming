import \rollup-plugin-babel : babel
{dependencies} = require \./package.json

config =
  input: \src/index.ls
  output: file: \lib/index.js format: \cjs use-strict: false
  plugins: [babel!]
  external: Object.keys dependencies

export default: config
