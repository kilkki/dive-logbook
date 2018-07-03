class CreateLogEntry < Neo4j::Migrations::Base
  def up
    add_constraint :LogEntry, :uuid
  end

  def down
    drop_constraint :LogEntry, :uuid
  end
end
