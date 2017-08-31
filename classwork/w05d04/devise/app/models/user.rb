class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


	has_many :posts, dependent: :destroy

	validates :name, inclusion: { in: %w(Tychus Mobius Jimmy), message: "=> : %{value} is incorrect, please enter the right name" }
end
