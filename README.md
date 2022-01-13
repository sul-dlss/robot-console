# robot-console

This runs the [resque web console](https://github.com/resque/resque#the-front-end) to show the status of the robots.

## Background
The resque web console was previously run by [robot-master](https://github.com/sul-dlss/robot-master). As part of retiring robot-master, running the resque web console has been moved to this application.

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
puma --config config.ru
```

### JUNK
ignore this - it is created for a PR to test merge script
