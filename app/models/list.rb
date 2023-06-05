class List < ApplicationRecord

  #belongs_to :recipe, required: false
  has_many :list_strages, dependent: :destroy

end
