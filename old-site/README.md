shiftplan-web
=============

all web stuff around the shiftplan app (e.g. landing page etc.)


CSS compilation (without rails)
===============================

* `gem install bourbon`
* go to `assets/scss` and run `bourbon install` & `neat install`
* use sass to compile files on every change: `sass -r ./assets/scss/bourbon/lib/bourbon.rb --watch assets/scss:assets/css`
