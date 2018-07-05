class CreateDynamicAttribute < Neo4j::Migrations::Base
  def up
    add_constraint :DynamicAttribute, :uuid, force: true

  end

  def down
    drop_constraint :DynamicAttribute, :uuid
  end
end
