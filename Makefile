extension.zip:
	zip -r extension.zip ./ -x "Makefile" -x ".git/*"

build: extension.zip

clean:
	rm extension.zip

clean-build: clean build
