class ChildSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :birthday, :age, :password, :created_at, :updated_at
end
