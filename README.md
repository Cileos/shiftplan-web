shiftplan-web
=============

all web stuff around the shiftplan app (e.g. landing page etc.)


CSS compilation (without rails)
===============================

* `gem install bourbon`
* locate bourbon and symlink `<bourbon>/app/assets/stylesheets/` to `<shiftplan-web>/asssets/scss/bourbon`
* use sass to compile files on every change: `sass -r bourbon --watch assets/scss:assets/css`