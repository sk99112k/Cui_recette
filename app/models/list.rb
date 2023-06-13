class List < ApplicationRecord

  has_many :list_storages, dependent: :destroy
  has_many :recipes, through: :list_storages

  # バリデーション
  with_options presence: true do
    validates :name
    validates :supplier
    validates :unit
    validates :lot
    validates :price, format: { with: /\A[0-9]+\z/, message: 'は半角数字で入力して下さい'}
    validates :name_kana, format: { with: /\A[ｧ-ﾝﾞﾟ]+\z/, message: 'は半角ｶﾀｶﾅで入力して下さい'}
  end

end
