class ListStorage < ApplicationRecord
  belongs_to :recipe
  belongs_to :list
end
