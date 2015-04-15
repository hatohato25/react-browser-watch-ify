gulp	= require 'gulp'
$		= do require 'gulp-load-plugins'
config	= require '../config'

gulp.task 'jade', ->
	gulp.src(
		config.jade.src
		config.jade.ignore
	)
	.pipe $.jade()
	.pipe gulp.dest config.jade.dest
