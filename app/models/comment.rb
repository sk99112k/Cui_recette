class Comment < ApplicationRecord

  belongs_to :member
  belongs_to :recipe

  # validates :body, presence: true

end
