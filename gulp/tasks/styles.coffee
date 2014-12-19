gulp = require('gulp')
plumber = require('gulp-plumber')
stylus = require('gulp-stylus')
minify = require('gulp-minify-css')

context = require('./context')


paths = context.paths
env = context.env

gulp.task 'styles', ->
  stream = gulp.src(paths.src + 'styles/**/*.styl')
  .pipe(plumber())
  .pipe(stylus({use: ['nib']}))

  stream.pipe(minify()) if env == 'production'

  stream.pipe(gulp.dest(paths.dest + 'css/'))

  return