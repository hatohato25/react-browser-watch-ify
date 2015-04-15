gulp		= require 'gulp'
$			= do require 'gulp-load-plugins'
config		= require '../config'

gulp.task 'watchify', ['react']
gulp.task 'watch', ['build', 'watchify'], ->
	gulp.watch config.browserify.entries, ['react']
