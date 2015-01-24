gulp = require('gulp')
plumber = require('gulp-plumber')
concat = require('gulp-concat')
uglify = require('gulp-uglify')
browserify = require('gulp-browserify')

config = require('./config')

gulp.task 'scripts', ->
  stream = gulp.src(config.paths.src + 'scripts/index.coffee', {read: false})
  .pipe(plumber())
  .pipe(browserify({
      debug: config.env() == 'development',
      transform: ['coffeeify', 'hbsify'],
      extensions: ['.coffee', '.hbs']
    }))
  .pipe(concat('index.js'))

  stream.pipe(uglify()) if config.env() == 'production'

  stream.pipe(gulp.dest(config.paths.dest + 'js/'))

  return