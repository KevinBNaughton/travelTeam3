# README

This README would normally document whatever steps are necessary to get the
application up and running.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install
```

Next, migrate the database:

```
$ rake db:migrate
```

Or if we need to update just development or test database,

```
$ rake db:migrate RAILS_ENV=test
$ rake db:migrate RAILS_ENV=development
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

# To Update Git easily...

```
git add .
git commit -m "Message"
git pull origin master
git status
```

Here make sure all merge conflicts are fixed

```
git add .
git commit -m "Merge fixed!"
git pull origin master
git push origin master
```

All done!

# To Pull updates...

```
git pull origin master
rake db:migrate
```

Make sure to rake db:migrate after you fix merge errors!
