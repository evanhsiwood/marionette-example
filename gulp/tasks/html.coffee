gulp = require('gulp')
plumber = require('gulp-plumber')

context = require('./context')


paths = context.paths
env = context.env

gulp.task 'html', ->
  gulp.src(paths.src + 'index.html')
  .pipe(plumber())
  .pipe(gulp.dest(paths.dest))

  return
