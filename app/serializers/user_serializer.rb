class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :created_at, :updated_at
end