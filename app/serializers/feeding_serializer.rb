class FeedingSerializer < ActiveModel::Serializer
  attributes :id, :child_id, :feeding_method, :food, :amount, :created_at, :updated_at
  has_one :child
end

