class Dive
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  property :title, type: String
  property :time, type: Integer

  has_one :out, :creator, type: :creator, model_class: :User


end
