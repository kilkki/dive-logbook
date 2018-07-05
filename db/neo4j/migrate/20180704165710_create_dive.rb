class CreateDive < Neo4j::Migrations::Base
  def up
    add_constraint :Dive, :uuid, force: true
  end

  def down
    drop_constraint :Dive, :uuid
  end
end
