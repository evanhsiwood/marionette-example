gulp = require('gulp')
plumber = require('gulp-plumber')
concat = require('gulp-concat')
uglify = require('gulp-uglify')
browserify = require('gulp-browserify')


context = require('./context')


paths = context.paths
env = context.env

gulp.task 'scripts', ->
  stream = gulp.src(paths.src + 'scripts/index.coffee', {read: false})
  .pipe(plumber())
  .pipe(browserify({
      debug: env = 'development',
      transform: ['coffeeify', 'jadeify'],
      extensions: ['.coffee', '.jade']
    }))
  .pipe(concat('index.js'))

  stream.pipe(uglify()) if env == 'production'

  stream.pipe(gulp.dest(paths.dest + 'js/'))

  return