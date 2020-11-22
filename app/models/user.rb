class User < ApplicationRecord
    # validates :username, uniqueness: {case_sensitive: false}
    has_many :children
    has_many :journal_entry
    has_many :diapers, through: :children
    has_many :naps, through: :children
    has_many :feedings, through: :children

end
