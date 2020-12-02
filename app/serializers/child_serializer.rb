class ChildSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :birthday, :age, :created_at, :updated_at
  has_one :user
end
