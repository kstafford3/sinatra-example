Sinatra on OpenShift
====================

This git repository helps you get up and running quickly w/ a Sinatra installation
on OpenShift.

In my fork I'm using the diy cartridge. I've been using Ruby 1.9.3.
I've also added a views folder with some placeholder ERBs.

Thanks to OpenShift for making the original quickstart available (openshift/sinatra-example)

Running on OpenShift
----------------------------

Create an account at http://openshift.redhat.com/

Create a diy-0.1 application

    rhc app create -a sinatra -t diy-0.1

Add this upstream sinatra repo

    cd sinatra
    git remote add upstream -m master git://github.com/kstafford3/sinatra-example.git
    git pull -s recursive -X theirs upstream master
    
Then push the repo upstream

    git push

That's it, you can now checkout your application at:

    http://sinatra-$yournamespace.rhcloud.com

To test locally:

	bundle install  # Run this the first time to get your gems set up
	rackup

License
-------

This code is dedicated to the public domain to the maximum extent
permitted by applicable law, pursuant to CC0
http://creativecommons.org/publicdomain/zero/1.0/
