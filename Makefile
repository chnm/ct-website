# requires: https://www.npmjs.com/package/http-server
preview :
	hugo serve

build : 
	hugo --minify
