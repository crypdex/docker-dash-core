# VERSION=0.13 make release

VERSION?=

release: require-version
	@bash ./scripts/release.sh

require-version:
ifndef VERSION
	$(error 'VERSION' is undefined)
else
	@echo "configured for ${VERSION}"
endif

