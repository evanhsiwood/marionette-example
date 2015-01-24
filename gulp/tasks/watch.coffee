gulp = require('gulp')
livereload = require('gulp-livereload')

config = require('./config')

gulp.task 'watch', ->
  server = livereload()

  gulp.watch(config.paths.src + 'scripts/**', ['scripts'])
  gulp.watch(config.paths.src + 'styles/**/*.scss', ['styles'])
  gulp.watch(config.paths.src + 'index.html', ['html'])

  gulp.watch([
    config.paths.dest + 'js/*.js',
    config.paths.dest + 'css/*.css',
    config.paths.dest + '**/*.html'
  ], (evt)->
    server.changed(evt.path)
  )

  return