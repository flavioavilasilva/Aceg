class MinhasAdocoesController < ApplicationController
  
  def index
    @minhas_adocoes = AdocaoAnimal.where('adotando_animal_id=?', current_usuario.id)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @minhas_adocoes }
    end
  end
  
end
