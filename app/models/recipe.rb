class Recipe < ApplicationRecord
  # attr_accessor :list_storages_attributes

  has_one_attached :image

  belongs_to :member
  belongs_to :genre
  has_many :book_marks, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :list_storages, dependent: :destroy
  has_many :lists, through: :list_storages
  # cocoonの記述(RecipeモデルとListStorageモデルを同時に作成・更新)
  accepts_nested_attributes_for :list_storages, reject_if: :all_blank, allow_destroy: true

  # バリデーション
  validates_associated :list_storages
  with_options presence: true do
    validates :title, length: { maximum: 50, message: 'は50字以内で入力して下さい' }
    validates :body
    # validates :list_storages
  end

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join("app/assets/images/no_image.jpg")
      image.attach(io: File.open(file_path), filename: "default-image.jpg", content_type: "image/jpeg")
    end
    image.variant(resize_to_limit: [width, height]).processed
  end

  def bookmarked_by?(member)
    book_marks.where(member_id: member).exists?
  end

  def self.search(search)
    # searchが空ならRecipe.allを返す（blankは空という意味）
    return Recipe.all if search.blank?
    Recipe.where('title LIKE ?', "%#{search}%")
  end

end 
