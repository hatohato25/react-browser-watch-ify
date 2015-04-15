gulp	= require 'gulp'
del		= require 'del'
config	= require '../config'

gulp.task 'clean',
	del.bind 'null',
		[ config.del.src ],
		{ dot: true}