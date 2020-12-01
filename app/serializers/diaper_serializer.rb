class DiaperSerializer < ActiveModel::Serializer
  attributes :id, :child_id, :texture, :color, :image, :created_at, :updated_at
  has_one :child
end