module.exports =
	jade:
		src:		'./src/jade/*.jade'
		ignore:		'!./src/jade/_*.jade'
		min:		'./public/views'
		dest:		'./build'
	css:
		src:		'./src/scss/*.scss'
		min:		'./public/css'
		dest:		'./build/css'
	js:
		src:		'./src/js/*.js'
		min:		'./public/js'
		map:		'./maps'
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
		src:		'./build/js/*.js'
		dest:		'./build/js'
	public:
		depends:	['react', 'uglify']
		dest:		'./public/'
	del:
		src:		'./build/*'
