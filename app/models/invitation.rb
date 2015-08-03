class Invitation < ActiveRecord::Base
  validates :email, presence: true

  validate :check_email_addresses

  def check_email_addresses
    email.split(/[\s,]+/).each do |email|
      unless email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
        errors.add(:email, "#{email} is invalid")
      end
    end
  end

end
