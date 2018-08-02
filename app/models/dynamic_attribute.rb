class DynamicAttribute
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  property :type, type: Integer
  property :value

  has_one :out, :belongs_to, type: :belongs_to, model_class: :Dive
  has_many :in, :dynamic_attributes, type: :dynamic_attribute, model_class: :AttributeValue
end
