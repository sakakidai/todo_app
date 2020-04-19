class UserLogin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable, :omniauthable, omniauth_providers: [:twitter]

  def self.from_omniauth(auth)
    find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |user_login|
      user_login.provider = auth["provider"]
      user_login.uid = auth["uid"]
      user_login.confirmed_at = Time.zone.now if create
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

  # Devise method Override (OmniAuthで認証したユーザーのパスワード入力が免除)
  def password_required?
    super && provider.blank?
  end

  # Devise method Override (OmniAuthで認証したユーザーのメールアドレス入力が免除)
  def email_required?
    super && provider.blank?
  end

  # あとでちゃんと動くか確認
  # Edit時、OmniAuthで認証したユーザーのパスワード入力免除するため、Deviseの実装をOverrideする。
  def update_with_password(params, *options)
    if encrypted_password.blank?            # encrypted_password属性が空の場合
      update_attributes(params, *options)   # パスワード入力なしにデータ更新
    else
      super
    end
  end
end
