gulp = require('gulp')
livereload = require('gulp-livereload')

context = require('./context')


paths = context.paths
env = context.env

gulp.task 'watch', ->
  server = livereload()

  gulp.watch(paths.src + 'scripts/**', ['scripts'])
  gulp.watch(paths.src + 'styles/**/*.styl', ['styles'])
  gulp.watch(paths.src + 'index.html', ['html'])

  gulp.watch([
    paths.dest + 'js/*.js',
    paths.dest + 'css/*.css',
    paths.dest + '**/*.html'
  ], (evt)->
    server.changed(evt.path)
  )

  return