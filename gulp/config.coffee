module.exports =
	css:
		src:		'./src/scss/*.scss'
		dest:		'./build/css'
	js:
		src:		'./src/js/*.js'
		dest:		'./build/js'
	browserify:
#		entries:	'./src/js/app.js'
		entries:	'./src/coffee/app.cjsx'
#		transform:	['reactify']
		transform:	['coffee-reactify']
		extensions:	['.cjsx']
		debug:		true
	build:
		depends:	['css', 'js']
		dest:		'./build'
