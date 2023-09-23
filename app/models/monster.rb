class Monster < ApplicationRecord
  belongs_to :book


  validates :name, presence: true
  validates :origin, presence: true
  validates :description, presence: true
end
