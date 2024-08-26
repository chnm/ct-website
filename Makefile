# requires: https://www.npmjs.com/package/http-server
preview :
	hugo serve --disableFastRender --buildDrafts --buildFuture

build :
	hugo --minify
