gulp = require 'gulp'

gulp.task 'default', ['build']
gulp.task 'build', [
	'jade'
	'react'
	'uglify'
]
