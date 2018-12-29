This repository holds the CMUCL web site at
[common-lisp.net/project/cmucl](http://common-lisp.net/project/cmucl),
which is also mirrored at [www.cmucl.org](http://www.cmucl.org) and at
[www.cons.org/cmucl](http://www.cons.org/cmucl).  .

## How to Update
It's not enough just to update the pages; they need to be processed to
generate the actual site.

When changes are committed, the html pages are automatically updated
and available at https://common-lisp.net/project/cmucl.  From
here, a cron job on www.cmucl.org and www.cons.org does a periodic
rsync to update the web pages with these pages.

However, if you want to preview the changes before committing them,
first, check out the cmucl-site repo.  Edit the desired pages, but be
sure to preserve the `@@<foo>@@` tags.  Check in your changes.  Log on
to common-lisp.net and check out `cmucl-www` somewhere.

Then `cd` to `cmucl-site/cmucl-www/www` directory and run

    emacs -batch -q -l ../build.el -f wb-make

This updates the files and places the result in `cmucl-site/public`.  
In a few minutes the pages should be updated on
[www.cmucl.org](http://www.cmucl.org).  After a day or so, the new
webpages should appear on [www.cons.org](http://www.cons.org/cmucl).
