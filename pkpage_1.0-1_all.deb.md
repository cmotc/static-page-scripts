Package: pkpage 
============= 

###Version: 1.0-1
####Maintainer: idk eyedeekay@i2pmail.org
####Installed-Size: 34
###Depends:
  * markdown
###Description:
 Generates a Markdown-formatted description of a software package
and a corresponding html page. For use with my repo generator, apt-git so that
it can generate package description pages automatically and make the
repositories easier to browse. It's a very, very basic little script. I don't
intend to expand it or make it smarter, instead I'm going to use it by
redirecting it's output and processing that. It uses dpkg --info to read the
contents of your debian package, grep and sed, and doesn't need bash, so it
should run fine on any Debian-based system.
Homepage:[ https://cmotc.github.io/pkpage/ ](https://cmotc.github.io/pkpage/)
####Section: admin
####Priority: optional
