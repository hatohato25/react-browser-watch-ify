gulp	= require 'gulp'

gulp.task 'default', ['build']
gulp.task 'build', [
	'react'
	'uglify'
]
