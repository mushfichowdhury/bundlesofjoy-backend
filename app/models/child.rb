class Child < ApplicationRecord
    has_many :diapers
    has_many :naps
    has_many :feedings
    belongs_to :user
end
