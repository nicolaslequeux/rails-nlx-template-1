class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  validate :correct_avatar

  private

  def correct_avatar
    if avatar.attached? && !avatar.content_type.in?(%W(image/jpg image/jpeg image/png))
      errors.add(:avatar, "must be a JPEG or PNG file")
    else
      avatar.attached? == false
    end

  end


end
