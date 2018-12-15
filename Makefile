extension.zip:
	zip -r extension.zip ./ -x "Makefile" \
		-x ".git/*" \
		-x "manifest.json.template" \
		-x ".gitignore"

build: extension.zip

clean:
	rm -f extension.zip manifest.json

clean-build: clean build manifest.json

manifest.json:
	@sh generate-manifest.sh
