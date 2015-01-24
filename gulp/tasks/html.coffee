gulp = require('gulp')
plumber = require('gulp-plumber')

config = require('./config')

gulp.task 'html', ->
  gulp.src(config.paths.src + 'index.html')
  .pipe(plumber())
  .pipe(gulp.dest(config.paths.dest))

  return
