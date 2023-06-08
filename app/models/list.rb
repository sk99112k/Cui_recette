class List < ApplicationRecord

 has_many :list_storages, dependent: :destroy
 has_many :recipes, through: :list_storages

end
