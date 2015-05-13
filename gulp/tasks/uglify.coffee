gulp		= require 'gulp'
$			= do require 'gulp-load-plugins'
config		= require '../config'

gulp.task 'uglify', ->
	return gulp.src config.build.src
	.pipe $.uglify()
	.pipe $.sourcemaps.init()
	.pipe $.sourcemaps.write(config.js.map)
	.pipe gulp.dest config.js.min
