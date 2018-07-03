class LogEntry 
  include Neo4j::ActiveNode
  property :title, type: String
  property :time, type: Integer

  has_one :out, :creator, type: :creator, model_class: :User
end
