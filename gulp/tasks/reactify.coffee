gulp		= require 'gulp'
browserify	= require 'browserify'
source		= require 'vinyl-source-stream'
config		= require '../config.coffee'

gulp.task 'react', ->
	return browserify(
		config.browserify
	)
	.bundle()
	.pipe source 'bundle.js'
	.pipe gulp.dest config.build.dest
