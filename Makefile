extension.zip:
	zip -r extension.zip ./ -x "Makefile" \
		-x ".git/*" \
		-x "manifest.json.template" \
		-x ".gitignore"

build: extension.zip

clean:
	rm -f extension.zip manifest.json

clean-build: clean manifest.json build

manifest.json:
	@sh generate-manifest.sh
