# VVV Bootstrap - Ramsey Solutions

This is one of a series of demonstrations of the auto-site-setup designed to be used with [Varying Vagrants Vagrant](https://github.com/10up/varying-vagrant-vagrants/).

This demo shows a site setup using just WP CLI and MySQL commands.

To get started:

1. If you don't already have it, clone the [Vagrant repo](https://github.com/10up/varying-vagrant-vagrants/) , perhaps into your `~/Vagrants/` directory (you may need to create it if it doesn't already exist)
1. Do a site-wide find and replace for the demo domain (vvv-demo-1.dev), replacing it with your own.
1. Ensure the database creation/connection details in vvv-init.sh are to your liking.
1. Install the Vagrant hosts updater: `vagrant plugin install vagrant-hostsupdater`
1. Clone this branch of this repo into the `www` directory of your Vagrant as `www/vvv-demo-1`
1. If your Vagrant is running, from the Vagrant directory run `vagrant halt`
1. Followed by `vagrant up --provision`.  Perhaps a cup of tea now? The provisioning may take a while.

Then you can visit [http://vvv-demo-1.dev/](http://vvv-demo-1.dev/)

**Setup Variables**

Find/replace these across your project directory.

* Site Name: {{siteName}}
* Database Name: {{dbName}}
* Local Development Domain: {{siteDomain}}
* WordPress Admin Email: {{wpAdminEmail}}
