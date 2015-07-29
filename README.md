![Heroku](https://heroku-badge.herokuapp.com/?app=heroku-badge)

# README for Depot App

Dockerized to run locally
Deployed to Heroku

Git clone this repository

### Local
```
bundle install
rake db:setup
rake db:seed
rails s
```

###Docker
* install Docker
* install Docker-Compose

```
docker-compose up
```
###Heroku
* install Heroku-CLI

```
heroku create
git push heroku master
```
