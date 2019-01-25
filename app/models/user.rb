class User < ApplicationRecord
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
     :omniauthable, :omniauth_providers => [:google_oauth2]
     
  validates :email, presence: true
  validates :password, presence: true

  def self.from_omniauth(access_token)
	  data = access_token.info
	  user = User.where(:email => data["email"]).first

	  unless user
	    password = Devise.friendly_token[0,20]
	    user = User.create(email: data["email"],
	      password: password, password_confirmation: password
	    )
	  end
	  user
	end

end
