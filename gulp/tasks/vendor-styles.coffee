gulp = require('gulp')
plumber = require('gulp-plumber')
concat = require('gulp-concat')
minify = require('gulp-minify-css')

context = require('./context')


paths = context.paths
env = context.env


gulp.task 'vendor-styles', ->
  # css
  stream = gulp.src([
    paths.vendor + 'styles/bootstrap.css',
    paths.vendor + 'styles/bootstrap-theme.css'
  ])
  .pipe(plumber())
  .pipe(concat("vendor.css"))

  stream.pipe(minify()) if env == 'production'

  stream.pipe(gulp.dest(paths.dest + '/css'))

  #  map
  stream = gulp.src([
    paths.vendor + 'styles/bootstrap.css.map',
    paths.vendor + 'styles/bootstrap-theme.css.map'
  ])
  stream.pipe(gulp.dest(paths.dest + 'css/'))

  # font
  stream = gulp.src([
    paths.vendor + 'fonts/**'
  ])
  stream.pipe(gulp.dest(paths.dest + 'fonts/'))

  return


