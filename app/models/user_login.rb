class UserLogin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable, :omniauthable, omniauth_providers: [:twitter]

  def self.from_omniauth(auth)
    find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |userlogin|
      userlogin.provider = auth["provider"]
      userlogin.uid = auth["uid"]
      userlogin.username = auth["info"]["nickname"]
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_login_attributes"]
      new(session["devise.user_loign_attributes"]) do |userlogin|
        userlogin.attributes = params
      end
    else
      super
    end
  end
end
