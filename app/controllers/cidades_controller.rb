class CidadesController < ApplicationController
  # GET /cidades
  # GET /cidades.json
  def index
    @cidades = Cidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cidades }
    end
  end

  # GET /cidades/1
  # GET /cidades/1.json
  def show
    @cidade = Cidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cidade }
    end
  end

  # GET /cidades/new
  # GET /cidades/new.json
  def new
    @cidade = Cidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cidade }
    end
  end

  # GET /cidades/1/edit
  def edit
    @cidade = Cidade.find(params[:id])
  end

  # POST /cidades
  # POST /cidades.json
  def create
    @cidade = Cidade.new(params[:cidade])

    respond_to do |format|
      if @cidade.save
        format.html { redirect_to @cidade, notice: 'Cidade was successfully created.' }
        format.json { render json: @cidade, status: :created, location: @cidade }
      else
        format.html { render action: "new" }
        format.json { render json: @cidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cidades/1
  # PUT /cidades/1.json
  def update
    @cidade = Cidade.find(params[:id])

    respond_to do |format|
      if @cidade.update_attributes(params[:cidade])
        format.html { redirect_to @cidade, notice: 'Cidade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cidades/1
  # DELETE /cidades/1.json
  def destroy
    @cidade = Cidade.find(params[:id])
    @cidade.destroy

    respond_to do |format|
      format.html { redirect_to cidades_url }
      format.json { head :no_content }
    end
  end
  
  def cidades_by_estado
    estado_id = params[:id].to_i
    cidades = Cidade.where(:estado_id => estado_id)
    cid = []
    cidades.each do |cidade|
      cid << {:id => cidade.id, :cidade => cidade.cidade}
    end
    render :json => {:cid => cid.compact}.as_json
  end
  
  def find_by_nome_cidade
    
    estado = Estado.where(:estado=>session[:estado_usuario_logado].to_s).first
    cidade_nome = params[:cidade].to_s
    
    cidade = Cidade.where(:estado_id=>estado.id, :cidade => cidade_nome).first unless estado.blank?
    cid = []
    cid << {:id => cidade.id, :cidade => cidade.cidade}
    render :json => {:cid => cid.compact}.as_json
  end

end
