class Dive
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  property :title, type: String
  property :time, type: Integer

  has_one :out, :creator, type: :creator, model_class: :User
  has_many :in, :dynamic_attributes, type: :dynamic_attribute, model_class: :DynamicAttribute
  has_many :in, :attribute_values, type: :dive_attribute, model_class: :AttributeValue

end
