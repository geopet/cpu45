# General Install/Configuration Tips

These are just some gotchyas that may be valuable to have documented as this
application appears to be intended as a learning piece.

## Postgres

If you're running OS X and you have not installed Postgres before, the simplest
solution to working with Postgres is to download the
[Postgres.app](http://postgresapp.com/). Once downloaded and unzipped, place the
app in your `/Applications` directory and run it via a double click.

Add, or change, the following in your `config/database.yml` file:

```yml
development:
  adapter: postgresql
  database: cpu45_development
  host: localhost
```

Next run `$ rake db:create` and then `$ rake db:migrate`. Running `rails server`
should startup without a problem.

## Webrick

If you're not using [Pow](http://pow.cx/) to run your Rails app, you may find
that running `rails server` with Webrick is painfully slow. To deal with this
you must change the Webrick configuration file to prevent Webrick from
performing reverse lookups.

First, find your Webrick `config.rb` file. If you're using
[RVM](https://rvm.io/) to manage your Ruby installation, then the configuration
file will likely be found
`~/.rvm/rubies/ruby-1.9.3-p362/lib/ruby/1.9.1/webrick/`. Once you have your
config.rb file open, change this line from this:

`:DoNotReverseLookup => nil,`

to this:

`:DoNotReverseLookup => true,`

Restart your Rails app and Webrick should be moving much more speedily.

Another alternative is to add `gem 'thin'` to your `Gemfile`, `bundle install`,
and then `thin start` to run the thin server. This fix will break away
from the repositories `Gemfile`, though, and may be overwritten when you pull
from upstream.
