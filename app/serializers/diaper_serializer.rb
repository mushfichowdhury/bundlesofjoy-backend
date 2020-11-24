class DiaperSerializer < ActiveModel::Serializer
  attributes :id, :child_id, :wet, :solid, :color, :created_at, :updated_at
  has_one :child
end