class PrioridadeAdocoesController < ApplicationController
  # GET /prioridade_adocoes
  # GET /prioridade_adocoes.json
  def index
    @prioridade_adocoes = PrioridadeAdocao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prioridade_adocoes }
    end
  end

  # GET /prioridade_adocoes/1
  # GET /prioridade_adocoes/1.json
  def show
    @prioridade_adocao = PrioridadeAdocao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prioridade_adocao }
    end
  end

  # GET /prioridade_adocoes/new
  # GET /prioridade_adocoes/new.json
  def new
    @prioridade_adocao = PrioridadeAdocao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prioridade_adocao }
    end
  end

  # GET /prioridade_adocoes/1/edit
  def edit
    @prioridade_adocao = PrioridadeAdocao.find(params[:id])
  end

  # POST /prioridade_adocoes
  # POST /prioridade_adocoes.json
  def create
    @prioridade_adocao = PrioridadeAdocao.new(params[:prioridade_adocao])

    respond_to do |format|
      if @prioridade_adocao.save
        format.html { redirect_to @prioridade_adocao, notice: 'Prioridade adocao was successfully created.' }
        format.json { render json: @prioridade_adocao, status: :created, location: @prioridade_adocao }
      else
        format.html { render action: "new" }
        format.json { render json: @prioridade_adocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prioridade_adocoes/1
  # PUT /prioridade_adocoes/1.json
  def update
    @prioridade_adocao = PrioridadeAdocao.find(params[:id])

    respond_to do |format|
      if @prioridade_adocao.update_attributes(params[:prioridade_adocao])
        format.html { redirect_to @prioridade_adocao, notice: 'Prioridade adocao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prioridade_adocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prioridade_adocoes/1
  # DELETE /prioridade_adocoes/1.json
  def destroy
    @prioridade_adocao = PrioridadeAdocao.find(params[:id])
    @prioridade_adocao.destroy

    respond_to do |format|
      format.html { redirect_to prioridade_adocoes_url }
      format.json { head :no_content }
    end
  end
end
