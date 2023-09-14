class Question < ApplicationRecord

  belongs_to :user

  validates :text, presence: true, length: { maximum: 255 }
  validates :user_id, presence: true
  validate :user_id_exists
  # validate :author_id_exists
  belongs_to :author, class_name: 'User', optional: true


  private
  def user_id_exists
    unless User.exists?(id: user_id)
      errors.add(:user_id, "must exist in Users")
    end
  end

  # def author_id_exists
  #   if author_id.present? && User.where(id: author_id).empty?
  #     errors.add(:author_id, "must match the existing id from Users")
  #   end
  # end
end
