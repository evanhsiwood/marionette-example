gulp = require('gulp')
plumber = require('gulp-plumber')
jade = require('gulp-jade')

context = require('./context')


paths = context.paths
env = context.env

gulp.task 'html', ->
  gulp.src(paths.src + 'index.jade')
  .pipe(plumber())
  .pipe(jade({
      pretty: env == 'development'
    }))
  .pipe(gulp.dest(paths.dest))

  return
