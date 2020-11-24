class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :created_at, :updated_at
end