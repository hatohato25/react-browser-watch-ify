gulp		= require 'gulp'
$			= do require 'gulp-load-plugins'
browserify	= require 'browserify'
source		= require 'vinyl-source-stream'
config		= require '../config'

gulp.task 'react', $.watchify () ->
	return browserify(
		config.browserify
	)
	.bundle()
	.pipe source 'bundle.js'
	.pipe gulp.dest config.build.dest
