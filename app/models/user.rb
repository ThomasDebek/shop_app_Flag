class User < ApplicationRecord
  has_many :orders

  def admin?
    role == "admin"
  end
end
