class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Start: *TODO:  muestra name o email      
  def full_name
    name.blank? ? email : name
  end
  # End: *TODO:
end
