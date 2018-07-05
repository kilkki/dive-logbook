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
