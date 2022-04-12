class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.01 }
  validates :description, presence: true 
  
  def self.by_letter(letter)
    where("name LIKE ?", "#{letter}%").order(:name)
  end
end
