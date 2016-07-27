class User < ActiveRecord::Base

  validates :name, :email, presence: { message: "El nombre o email no pueden estar vacios." }
  validates :email, uniqueness: { message: "El email ya fue registrado." }
end

