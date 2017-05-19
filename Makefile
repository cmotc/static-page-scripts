
metapackage:
	rm ns-control static-page-scripts_1.0_all.deb
	equivs-control ns-control
	sed -i 's|<package name; defaults to equivs-dummy>|static-page-scripts|' ns-control
	sed -i 's|# Depends: <comma-separated list of packages>|Depends: pkpage,scpage,hdpage|' ns-control
	sed -i 's|# Maintainer: Your Name <yourname@example.com>|Maintainer: lair repo key <problemsolver@openmailbox.org>|' ns-control
	sed -i 's|<short description; defaults to some wise words>|shell scripts to generate static pages|' ns-control
	sed -i 's|long description and info|a set of shell scripts that generate markdown documents or HTML files based on \n various common types of data.|' ns-control
	equivs-build --full ns-control
	dpkg-source -x static-page-scripts_1.0.dsc
	cd static-page-scripts_1.0 && debuild -S
