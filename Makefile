index.html: index.org pandoc.css Makefile gruvbox.theme
	pandoc -o index.html index.org --toc -H pandoc.css -s --highlight-style gruvbox.theme

gruvbox.theme: gruvbox.json
	cp gruvbox.json gruvbox.theme

clean:
	rm -f index.html gruvbox.theme
