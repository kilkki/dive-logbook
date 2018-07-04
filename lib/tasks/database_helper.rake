desc "This task is called by the Heroku scheduler add-on"
task :reset_database => :environment do
  puts "Deleting everything in database"
  Neo4j::ActiveBase.current_session.query('MATCH (n) DETACH DELETE n')
  puts "Done."
end