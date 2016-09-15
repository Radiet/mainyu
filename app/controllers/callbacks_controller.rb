class CallbacksController < Devise::OmniauthCallbacksController
  def facebook
    user = User.from_omniauth(request.env["omniauth.auth"])

    sign_in_and_redirect user if user
    redirect_to new_user_registration_path, { notice: "Unfortunatelly, you can't log in with facebook" }
  end
end
