class ListStorage < ApplicationRecord
  
  belongs_to :list
  belongs_to :recipe
  
  validates :quantity, presence: true
  
end
