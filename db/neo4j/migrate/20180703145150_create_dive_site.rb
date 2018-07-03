class CreateDiveSite < Neo4j::Migrations::Base
  def up
    add_constraint :DiveSite, :uuid
  end

  def down
    drop_constraint :DiveSite, :uuid
  end
end
