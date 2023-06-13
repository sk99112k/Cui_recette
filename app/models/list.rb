class List < ApplicationRecord

  has_many :list_storages, dependent: :destroy
  has_many :recipes, through: :list_storages

  # バリデーション
  with_options presence: true do
    validates :name
    validates :supplier
    validates :unit
    # 半角数値と小数点のみ" /\A[0-9]+(\.[0-9]+)?\z/ "
    validates :lot, format: { with: /\A[0-9]+(\.[0-9]+)?\z/, message: 'は半角数字で入力して下さい'}
    # 半角数値のみ "/\A[0-9]+\z/"
    validates :price, format: { with: /\A[0-9]+\z/, message: 'は半角数字で入力して下さい'}
    # 半角ｶﾀｶﾅのみ "/\A[ｧ-ﾝﾞﾟ]+\z/"
    validates :name_kana, format: { with: /\A[ｧ-ﾝﾞﾟ]+\z/, message: 'は半角ｶﾀｶﾅで入力して下さい'}
  end

end
