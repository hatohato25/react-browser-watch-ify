gulp			= require 'gulp'
$				= do require 'gulp-load-plugins'
browserify		= require 'browserify'
source			= require 'vinyl-source-stream'
config			= require '../config'
handleErrors	= require '../util/handleErrors'

gulp.task 'react', $.watchify () ->
	return browserify(
		config.browserify
	)
	.bundle()
	.on 'error', handleErrors
	.pipe source 'bundle.js'
	.pipe gulp.dest config.build.dest
