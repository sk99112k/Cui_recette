class ListStorage < ApplicationRecord

  belongs_to :list
  belongs_to :recipe

  validates :quantity, presence: true, numericality: { allow_blank: true, message: 'は数値で入力して下さい' }
  validates :list_id, presence: true
  validates :unit, presence: true

end