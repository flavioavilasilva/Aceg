class Devise::Usuarios::SessionsController < Devise::SessionsController
  
  def new
    super
  end
  
  def create
    super
  end
  
  def update
    super
  end
  
  def destroy
    super
    session[:estado_usuario_logado] = nil
    session[:cidade_usuario_logado] = nil
    session[:cep_usuario_logado] = nil
  end
  
end