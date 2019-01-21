module.exports = {
  plugins: [
    require.resolve('@babel/plugin-proposal-do-expressions'),
    [require.resolve('@babel/plugin-proposal-object-rest-spread'), {useBuiltIns: true}],
    require.resolve('babel-plugin-livescript')
  ]
}
