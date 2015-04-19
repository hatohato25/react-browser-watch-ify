$ = do require 'gulp-load-plugins'

module.exports = ->
	args = Array::slice.call(arguments)
	$.notify.onError(
		title: 'Compile Error'
		message: '<%= error %>'
	)
	.apply this, args
	@emit 'end'
