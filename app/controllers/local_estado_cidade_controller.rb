class LocalEstadoCidadeController < ApplicationController
  
  def index
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @local_estado_cidade }
    end
    
  end
  
  def create
    
    if !params[:with_estado].blank?
      @estado = Estado.find(params[:with_estado][:estado_id])
      session[:estado_usuario_logado] = nil
      session[:estado_usuario_logado] = @estado.estado
    end
      
    if !params[:with_cidade].blank?
      @cidade = Cidade.find(params[:with_cidade][:cidade_id])
      session[:cidade_usuario_logado] = nil
      session[:cidade_usuario_logado] = @cidade.cidade
    end
    
    if !session[:estado_usuario_logado].blank? and !session[:cidade_usuario_logado].blank?
      redirect_to root_url
      return
    end
    
  end
  
end
