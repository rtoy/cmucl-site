This repository holds the CMUCL web site on
[www.cmucl.org](http://www.cmucl.org), which is also mirrored at
[www.cons.org/cmucl](http://www.cons.org/cmucl) and at
[common-lisp.net/project/cmucl/mirror](http://common-lisp.net/project/cmucl/mirror).

## How to Update
It's not enough just to update the pages; they need to be processed to
generate the actual site.

First, check out the cmucl-www repo.  Edit the desired pages, but be
sure to preserve the `@@<foo>@@` tags.  Check in your changes.  Log on
to common-lisp.net and check out `cmucl-www` somewhere.

Then `cd` to `cmucl-www/cmucl-www/www` directory and run

    emacs -batch -q -l ../build.el -f wb-make

This updates the files in `/project/cmucl/public_html/mirror`.  From
here, a cron job on www.cmucl.org and www.cons.org does a periodic
rsync to update the web pages with these pages.  You can view the
results immediately at
[common-lisp.net/project/cmucl/mirror](http://common-lisp.net/project/cmucl/mirror).

In a few minutes the pages should be updated on
[www.cmucl.org](http://www.cmucl.org).  After a day or so, the new
webpages should appear on [www.cons.org](http://www.cons.org/cmucl).
