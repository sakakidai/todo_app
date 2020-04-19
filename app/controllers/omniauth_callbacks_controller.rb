class OmniauthCallbacksController < ApplicationController
  def twitter
    @user_login = UserLogin.from_omniauth(request.env["omniauth.auth"].except("extra"))

    if @user_login.persisted?
      sign_in_and_redirect(@userlogin)
    else
      session["devise.user_login_attributes"] = @user_login.attributes
      redirect_to new_user_login_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
