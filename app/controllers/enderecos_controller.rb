class EnderecosController < ApplicationController
  
  def busca_por_cep
    render :json => BuscaEndereco.cep(params[:cep])
  rescue RuntimeError
    render :json => ["", "cep nao encontrado", "", "", ""].to_json
  end

end
