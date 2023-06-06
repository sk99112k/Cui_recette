class ListStorage < ApplicationRecord
  belongs_to :recipe, optional: false
  belongs_to :list
end
