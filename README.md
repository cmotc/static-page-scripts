static page generation helper scripts
=====================================

These are a set of scripts to aid in generating markdown and static HTML
fragments with information about various kinds of files. They all take the same
options and are intended to be configured primarily by setting variables in the
parent environment. There are also some scripts that wrap them into standalone
pieces.

help
----

  * -p: Output an HTML page instead of a Markdown document
  * -f: Use this file as the basis for the desired page
  * -t: Override the title(tag) of the HTML output.

        hdpage : Output a formatted HTML page header. Will always fail if the
            -p option is not passed. -f option not implemented yet.
        ftpage : Output a formatted HTML page footer. Will always fail if the
            -p option is not passed. -f option not implemented yet. Unreleased.
        pkpage : Output a Markdown document or an HTML fragment which displays
            details about a .deb package. Discards -t option.
        scpage : Output a Markdown document or an HTML fragment which displays
            details about a .dsc package. Discards -t option.
        ptpage : Output a Markdown document or an HTML fragment which displays
            details about a .patch file. Unwritten.
        kypage : Output a Markdown document or an HTML fragment which displays
            details about a key/key owner. Unwritten.

helperhelp
----------

It'll probably be useful to have a short script that extracts a "default" title
from all the files I generate pages with, so I can add it to hdpage without
making hdpage longer.

wrapper help
------------

        pkpage-wrap : Output a full HTML page based on the details about a
            .deb package.
        scpage-wrap : Output a full HTML page based on the details about a
            .dsc package.
        divwrap : Output a Markdown document or an HTML fragment which displays
            it's contents wrapped in div elements.

metapackaging help
------------------

        equivs-control ns-control
        sed -i 's|<package name; defaults to equivs-dummy>|static-page-scripts|' ns-control
        sed -i 's|# Depends: <comma-separated list of packages>|Depends: pkpage,scpage,hdpage|' ns-control
        sed -i 's|# Maintainer: Your Name <yourname@example.com>|Maintainer: lair repo key <problemsolver@openmailbox.org>|' ns-control
        sed -i 's|<short description; defaults to some wise words>|shell scripts to generate static pages|' ns-control
        sed -i 's|long description and info|a set of shell scripts that generate markdown documents or HTML files based on \n various common types of data.|' ns-control
        equivs-build ns-control
        dpkg-source -x static-page-scripts_1.0.dsc
        cd static-page-scripts_1.0 && debuild -S

or just

  * make metapackage

from this directory.
