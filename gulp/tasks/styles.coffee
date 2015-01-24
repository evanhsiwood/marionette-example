gulp = require('gulp')
plumber = require('gulp-plumber')
#stylus = require('gulp-stylus')
sass = require('gulp-sass')
minify = require('gulp-minify-css')

config = require('./config')


gulp.task 'styles', ->
#  stream = gulp.src(paths.src + 'styles/**/*.styl')
#  .pipe(plumber())
#  .pipe(stylus({use: ['nib']}))
  stream = gulp.src(config.paths.src + 'styles/**/*.scss')
  .pipe(plumber())
  .pipe(sass())

  stream.pipe(minify()) if config.env() == 'production'

  stream.pipe(gulp.dest(config.paths.dest + 'css/'))

  return