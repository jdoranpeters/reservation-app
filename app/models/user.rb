class User < ActiveRecord::Base

	after_create :send_admin_email




	belongs_to :group
	has_many :reservations
	
	
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


def send_admin_email
	UserMailer.signup_confirmation(@admin, first_name, last_name, email, phone, id).deliver
		puts "admin"

	end

end
