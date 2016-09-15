class CallbacksController < Devise::OmniauthCallbacksController
  def facebook
    user = User.from_omniauth(request.env["omniauth.auth"])

    if user && user.persisted?
      sign_in_and_redirect user
    else
      redirect_to new_user_registration_path, { notice: "Unfortunatelly, you can't log in with facebook" }
    end
  end
    def google_oauth2
    user = User.from_omniauth(request.env["omniauth.auth"])

    if user && user.persisted?
      sign_in_and_redirect user
    else
      redirect_to new_user_registration_path, { notice: "Unfortunatelly, you can't log in with google" }
    end
  end
end
