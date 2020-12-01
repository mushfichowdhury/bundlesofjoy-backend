class JournalEntrySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :image, :title, :content, :created_at, :updated_at
  has_one :user
end
