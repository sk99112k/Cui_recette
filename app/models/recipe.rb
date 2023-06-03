class Recipe < ApplicationRecord

  has_one_attached :image
  
  belongs_to :member
  has_many :book_marks, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :lists, dependent: :destroy

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join("app/assets/images/no_image.jpg")
      image.attach(io: File.open(file_path), filename: "default-image.jpg", content_type: "image/jpeg")
    end
    image.variant(resize_to_limit: [width, height]).processed
  end

end
