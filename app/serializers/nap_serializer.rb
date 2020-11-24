class NapSerializer < ActiveModel::Serializer
  attributes :id, :child_id, :duration, :created_at, :updated_at
  has_one :child
end
