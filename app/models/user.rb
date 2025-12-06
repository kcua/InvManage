class User < ApplicationRecord
  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Set default role when creating a new user
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= "employee"  # default role
  end

  # Role helper methods
  def manager?
    role == "manager"
  end

  def employee?
    role == "employee"
  end
end

