class List < ApplicationRecord

  #belongs_to :recipe, required: false
  has_many :list_strages, dependent: :destroy
  has_many :recipes, through: :list_storages

end
