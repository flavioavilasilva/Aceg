# encoding: UTF-8
class SessionsLocalizacaoController < ApplicationController
  
  #Estado/Cidade
  
  def estado_cidade_acesso_usuario

    session[:estado_usuario_logado] = nil
    session[:cidade_usuario_logado] = nil
    session[:cep_usuario_logado] = nil
    
    #Recupera os dados cedidos pelo geolocation API do google
    if !params[:estado].blank?
      session[:estado_usuario_logado] = params[:estado]
    end
    
    if !params[:cidade].blank?
      session[:cidade_usuario_logado] = params[:cidade]
    end
    
    if !params[:cep].blank?
      session[:cep_usuario_logado] = params[:cep]
    end
    
    #Caso não disponível, acessa pelo cadastro de usuário ou carrega para selecão manual
    if session[:estado_usuario_logado].blank? or session[:cidade_usuario_logado].blank?
      
      if !current_usuario.blank?
        
        usuario = Usuario.find(current_usuario.id)
         
        session[:estado_usuario_logado] = usuario.estado
        session[:cidade_usuario_logado] = usuario.cidade
        session[:cep_usuario_logado] = usuario.cep
      
      end
      
    end
    
    respond_to do |format|
      format.json { head :no_content }
    end
   
  end
  
  
end

