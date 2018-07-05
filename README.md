[![Maintainability](https://api.codeclimate.com/v1/badges/3da9c0c6fd3bcdd70a51/maintainability)](https://codeclimate.com/github/kilkki/dive-logbook/maintainability)
<a href="https://codeclimate.com/github/kilkki/dive-logbook/test_coverage"><img src="https://api.codeclimate.com/v1/badges/3da9c0c6fd3bcdd70a51/test_coverage" /></a>
[![Build Status](https://semaphoreci.com/api/v1/public/dive-logbook/branches/master/badge.svg)](https://semaphoreci.com/public/dive-logbook)
# README

### Install neo4j
 * rake neo4j:install[community-latest]
 * rake neo4j:install[community-latest,test]
 
### Configuring custom ports
 * rake neo4j:config[development,7474]
 * rake neo4j:config[test,7475]
 
### Migrations
 * rake neo4j:migrate:all
 * rake neo4j:migrate:all test or rake neo4j:migrate RAILS_ENV=test
 
 
### Test
* rake neo4j:start[test]
* rake test
