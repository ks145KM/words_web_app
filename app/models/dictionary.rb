class Dictionary < ApplicationRecord
    has_many :words, dependent: :destroy
    validates :name, presence: true, length: { maximum: 40 }
end
