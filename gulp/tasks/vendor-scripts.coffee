gulp = require('gulp')
plumber = require('gulp-plumber')
concat = require('gulp-concat')
uglify = require('gulp-uglify')

context = require('./context')


paths = context.paths
env = context.env


gulp.task 'vendor-scripts', ->
  stream = gulp.src([
    paths.vendor + 'scripts/jquery.js',
    paths.vendor + 'scripts/bootstrap.js',
    paths.vendor + 'scripts/underscore.js',
    paths.vendor + 'scripts/backbone.js',
    paths.vendor + 'scripts/backbone.syphon.js',
    paths.vendor + 'scripts/backbone.marionette.js',
    paths.vendor + 'scripts/backbone-faux-server.js'
    paths.vendor + 'scripts/react.js'
  ])
  .pipe(plumber())
  .pipe(concat("vendor.js"))

  stream.pipe(uglify()) if env == 'production'

  stream.pipe(gulp.dest(paths.dest + 'js/'))

  return
