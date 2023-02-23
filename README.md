# robot-console

This runs the [sidekiq web console](https://github.com/mperham/sidekiq/wiki/Monitoring) to show the status of the robots.

## Running the app

### Install dependencies
```
bundle install
```

### Configure settings

You can set up the Redis connection by creating `config/settings/production.yml`
in shared configs or by setting the environment variables like this:
```
SETTINGS__REDIS__HOSTNAME=redis.school.edu
```

### Start
This project will work on any rack compatible server. Just point it at the
`config.ru` file. For example:
```
bundle exec puma
```
