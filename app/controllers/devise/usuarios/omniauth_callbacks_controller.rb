class Devise::Usuarios::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def facebook
    @user = Usuario.find_for_facebook_oauth(request.env["omniauth.auth"], current_usuario)

    if @user.persisted?
      flash[:notice] = I18n.t "devise.sessions.signed_in", :kind => "Facebook"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to root_url
    end
  end

  def passthru
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end

end