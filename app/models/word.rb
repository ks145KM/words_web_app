class Word < ApplicationRecord
  belongs_to :dictionary
  validates :dictionary_id, presence: true
  validates :name, presence: true
  validates :meaning, presence: true
end
