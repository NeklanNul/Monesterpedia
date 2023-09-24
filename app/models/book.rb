class Book < ApplicationRecord
  belongs_to :author
  has_many :monsters, :dependent => :destroy

  validates :name, presence: true
  validates :year, numericality: { only_integer: true }



end
