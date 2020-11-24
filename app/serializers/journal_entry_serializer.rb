class JournalEntrySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :image, :content, :created_at, :updated_at
  has_one :user
end
