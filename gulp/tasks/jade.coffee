gulp	= require 'gulp'
$	= do require 'gulp-load-plugins'
config	= require '../config'

gulp.task 'jade', ->
	gulp.src(
		config.jade.src
	)
	.pipe $.jade()
	.pipe gulp.dest config.jade.dest
	.pipe gulp.dest config.jade.min
