class Author < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :registerable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
end
