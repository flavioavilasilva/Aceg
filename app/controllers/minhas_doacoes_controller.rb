class MinhasDoacoesController < ApplicationController
  
  def index
    
    @minhas_doacoes = Animal.where('doador_animal_id=?', current_usuario.id)
    puts @minhas_doacoes.size
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @minhas_doacoes }
    end
  end
  
end
