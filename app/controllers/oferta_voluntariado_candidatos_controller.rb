class OfertaVoluntariadoCandidatosController < ApplicationController
  
  def new
    @oferta_volunariado = OfertaVoluntariado.find(params[:oferta_voluntariado][:id])
    @oferta_voluntariado_candidato = OfertaVoluntariadoCandidato.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @oferta_voluntariado_candidato }
    end
    
  end
  
  
  def create
    
    @oferta_voluntariado_candidato = OfertaVoluntariadoCandidato.new(params[:oferta_voluntariado_candidato])
    @oferta_voluntariado_candidato.status_cadidatura = 1

    respond_to do |format|
      if @oferta_voluntariado_candidato.save
        format.html { redirect_to @oferta_voluntariado_candidato, notice: 'Oferta voluntariado was successfully created.' }
        format.json { render json: @oferta_voluntariado_candidato, status: :created, location: @oferta_voluntariado_candidato }
      else
        format.html { render action: "new" }
        format.json { render json: @oferta_voluntariado_candidato.errors, status: :unprocessable_entity }
      end
    end
    
  end
  
  
  def show
    
    @oferta_voluntariado_candidato = OfertaVoluntariadoCandidato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @oferta_voluntariado_candidato }
    end
    
  end
  
  
  def candidatar_se
    
    if params[:oferta_voluntariado_id].present?
      
      @oferta_voluntariado = OfertaVolutariado.find(params[:oferta_voluntariado_id])
    
      if !@oferta_voluntariado.blank?
      
        oferta_voluntariado_cadidado = OfertaVolutariadoCandidato.new
        oferta_voluntariado_cadidado.oferta_voluntariado_id = @oferta_voluntariado.id
        oferta_voluntariado_cadidado.status_cadidatura = 1
        oferta_voluntariado_cadidado.usuario_id = current_usuario.id
      
        oferta_voluntariado_cadidado.save
      
      end
      
    end
    
  end
  
end
