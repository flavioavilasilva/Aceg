class FeiraAdocoesController < ApplicationController
  # GET /feira_adocoes
  # GET /feira_adocoes.json
  def index
    @feira_adocoes = FeiraAdocao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feira_adocoes }
    end
  end

  # GET /feira_adocoes/1
  # GET /feira_adocoes/1.json
  def show
    @feira_adocao = FeiraAdocao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feira_adocao }
    end
  end

  # GET /feira_adocoes/new
  # GET /feira_adocoes/new.json
  def new
    @feira_adocao = FeiraAdocao.new
    @feira_adocao.endereco_feira_adocao.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feira_adocao }
    end
  end

  # GET /feira_adocoes/1/edit
  def edit
    @feira_adocao = FeiraAdocao.find(params[:id])
  end

  # POST /feira_adocoes
  # POST /feira_adocoes.json
  def create
    @feira_adocao = FeiraAdocao.new(params[:feira_adocao])

    respond_to do |format|
      if @feira_adocao.save
        format.html { redirect_to @feira_adocao, notice: 'Feira adocao was successfully created.' }
        format.json { render json: @feira_adocao, status: :created, location: @feira_adocao }
      else
        format.html { render action: "new" }
        format.json { render json: @feira_adocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feira_adocoes/1
  # PUT /feira_adocoes/1.json
  def update
    @feira_adocao = FeiraAdocao.find(params[:id])

    respond_to do |format|
      if @feira_adocao.update_attributes(params[:feira_adocao])
        format.html { redirect_to @feira_adocao, notice: 'Feira adocao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feira_adocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feira_adocoes/1
  # DELETE /feira_adocoes/1.json
  def destroy
    @feira_adocao = FeiraAdocao.find(params[:id])
    @feira_adocao.destroy

    respond_to do |format|
      format.html { redirect_to feira_adocoes_url }
      format.json { head :no_content }
    end
  end
end
