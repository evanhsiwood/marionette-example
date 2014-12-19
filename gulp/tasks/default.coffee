gulp = require('gulp')

gulp.task('vendor', ['vendor-styles', 'vendor-scripts'])
gulp.task('compile', ['html', 'styles', 'scripts'])

gulp.task('default', ['vendor', 'compile'])
gulp.task('production', ['set-production', 'default'])