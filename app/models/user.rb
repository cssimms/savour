class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true
  # validates :encrypted_password, presence: true

  after_create :update_access_token!



# override devise helper methods because we don't want to deal with user's emails
  def email_changed?
    false
  end

  def email_required?
    false
  end

  private

  def update_access_token!
    # very silly to use the db ID in the token in practice, but works fine
    # and is simpler to deal with in the beginning stages of development

    self.access_token = "#{self.id}:#{Devise.friendly_token}"
    save
  end
end
