class Comment < ApplicationRecord

  belongs_to :member
  belongs_to :recipe
  has_many :checks, dependent: :destroy

  def checked_by?(member)
    checks.where(member_id: member).exists?
  end

end
