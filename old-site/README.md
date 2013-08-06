shiftplan-web
=============

all web stuff around the shiftplan app (e.g. landing page etc.)


CSS compilation (without rails)
===============================

* `gem install bourbon`
* go to `assets/scss` and run `bourbon install` & `neat install`
* use sass to compile files on every change: `sass -r ./assets/scss/bourbon/lib/bourbon.rb --watch assets/scss:assets/css`


Landing Page
============

The landing page is build with the help of middleman.

Build
-----

Either use middleman as idented or just run

        rake landing:build

Deploy
------

To deploy a new version of the landing page, you do not need to push code anywhere, as it will be compiled on your machine and uploaded directly into the webserver. Just do:

        rake landing:upload

This will build the most recent version and upload it using rsync over ssh.
