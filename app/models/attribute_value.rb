class AttributeValue
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  property :data_value

  has_one :out, :dynamic_attribute, type: :dynamic_attribute, model_class: :DynamicAttribute
  has_one :out, :dive, type: :dive_attribute, model_class: :Dive
end
