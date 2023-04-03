# requires: https://www.npmjs.com/package/http-server
preview :
	hugo serve

build : 
	hugo --minify

deploy : hugo
	@echo "\nDeploying the site with rsync ..."
	rsync --delete --itemize-changes --omit-dir-times \
		--checksum -avz --no-t --no-perms --exclude-from=rsync-excludes \
		public/ chnmdev:/websites/conthreads/www | egrep -v '^\.'
	@echo "Finished deploying the site to dev with rsync."