Hello
============================
Ever wanted to build B2G but was using a distro that makes it [awfully awful](https://developer.mozilla.org/zh-TW/Firefox_OS/Firefox_OS_build_prerequisites#Arch_Linux) to do so?

This docker image helps by installing all neccecary deps into a Ubuntu 14.04 base image.

Workflow

	git clone https://github.com/mozilla-b2g/B2G.git
	cd B2G
	./config.sh device-name
	docker run -v $PWD:/B2G -i -t simonjohansson/b2g-build


This has only been tested for nexus-4-kk as target so there will be missing deps for other platforms, please send PRs. :)
