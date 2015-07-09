class ApplicationController < ActionController::Base
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied."
    redirect_to root_url
  end
  
  def current_localizacao
      @localizacao ||= Localizacao.new(:cep=>session[:cep_usuario_logado], :estado=>session[:estado_usuario_logado], :cidade=>session[:cidade_usuario_logado])
  end
  helper_method :current_localizacao
  
  def current_ability
    if !current_admin.blank?
      @current_ability ||= Ability.new(current_admin)
    else
      @current_ability ||= Ability.new(current_usuario)
    end
  end
  
end

