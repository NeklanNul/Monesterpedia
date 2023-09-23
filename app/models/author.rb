class Author < ApplicationRecord
    has_many :books, :dependent => :destroy

    validates :name, presence: true
    validates :nationality, presence: true
    validates :age, numericality: { only_integer: true }

    private

end
