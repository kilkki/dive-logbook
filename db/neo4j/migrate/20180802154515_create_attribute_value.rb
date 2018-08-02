class CreateAttributeValue < Neo4j::Migrations::Base
  def up
    add_constraint :AttributeValue, :uuid, force: true
  end

  def down
    drop_constraint :AttributeValue, :uuid
  end
end
