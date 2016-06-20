.PHONY: release

check-version:
ifndef VERSION
	$(error VERSION is undefined)
endif

release: check-version
	@echo "Building version $(VERSION)"
	@echo "Checking SHA"
	@curl -sL https://github.com/reverbdotcom/rv/releases/download/$(VERSION)/binaries.tar.gz | shasum -a 256 | awk '{ print $$1 }' > SHA
	@echo "SHA is `cat SHA`"
	@echo $(VERSION) > VERSION
	@git add .
	@git commit -m "Bumping to $(VERSION)"
	@git push origin head
