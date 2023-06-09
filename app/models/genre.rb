class Genre < ApplicationRecord
  
  has_many :recipes, dependent: :destroy
  
  validates :name, presence: true, uniqueness: true
  
end
