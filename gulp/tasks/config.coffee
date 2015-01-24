gulp = require('gulp')

env = 'development'

gulp.task 'set-production', ->
  env = 'production'

module.exports = {
  paths: {
    src: './app/',
    dest: './public/',
    vendor: './vendor/',
    assets: './assets/',
    mock: './mock/'
  },
  env: ->
    env

}