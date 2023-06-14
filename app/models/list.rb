class List < ApplicationRecord

  has_many :list_storages, dependent: :destroy
  has_many :recipes, through: :list_storages

  # バリデーション
  with_options presence: true do
    validates :name
    validates :supplier
    validates :unit
    validates :name_kana, format: { with: /\A[ｧ-ﾝﾞﾟ]+\z/, message: 'は半角ｶﾀｶﾅで入力して下さい'}
    # "numericality"オプション. "allow_blank: true"空欄の場合にはバリデーションをスキップ  
    validates :lot, numericality: { allow_blank: true, message: 'は数値で入力して下さい' }
    # "only_integer: true"小数点以下の値を受け入れない
    validates :price, numericality: { only_integer: true, allow_blank: true, message: 'は半角の整数値で入力して下さい' }
  end

end
