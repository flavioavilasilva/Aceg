class CancelamentoAdocoesController < ApplicationController
  # GET /cancelamento_adocoes
  # GET /cancelamento_adocoes.json
  def index
    @cancelamento_adocoes = CancelamentoAdocao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cancelamento_adocoes }
    end
  end

  # GET /cancelamento_adocoes/1
  # GET /cancelamento_adocoes/1.json
  def show
    @cancelamento_adocao = CancelamentoAdocao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cancelamento_adocao }
    end
  end

  # GET /cancelamento_adocoes/new
  # GET /cancelamento_adocoes/new.json
  def new
    @adocao_animal = AdocaoAnimal.find(params[:adocao_animal])
    @cancelamento_adocao = @adocao_animal.cancelamento_adocao.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @adocao_animal.cancelamento_adocao }
    end
  end

  # GET /cancelamento_adocoes/1/edit
  def edit
    @cancelamento_adocao = CancelamentoAdocao.find(params[:id])
  end

  # POST /cancelamento_adocoes
  # POST /cancelamento_adocoes.json
  def create
    @adocao_animal = AdocaoAnimal.find(params[:cancelamento_adocao][:adocao_animal_id])
    CancelamentoAdocao.cancela_adocao_animal(@adocao_animal)
    @cancelamento_adocao = CancelamentoAdocao.new(params[:cancelamento_adocao])
    
    respond_to do |format|
      if @cancelamento_adocao.save
        format.html { redirect_to @cancelamento_adocao, notice: 'Cancelamento adocao was successfully created.' }
        format.json { render json: @cancelamento_adocao, status: :created, location: @cancelamento_adocao }
      else
        format.html { render action: "new" }
        format.json { render json: @cancelamento_adocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cancelamento_adocoes/1
  # PUT /cancelamento_adocoes/1.json
  def update
    @cancelamento_adocao = CancelamentoAdocao.find(params[:id])

    respond_to do |format|
      if @cancelamento_adocao.update_attributes(params[:cancelamento_adocao])
        format.html { redirect_to @cancelamento_adocao, notice: 'Cancelamento adocao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cancelamento_adocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cancelamento_adocoes/1
  # DELETE /cancelamento_adocoes/1.json
  def destroy
    @cancelamento_adocao = CancelamentoAdocao.find(params[:id])
    @cancelamento_adocao.destroy

    respond_to do |format|
      format.html { redirect_to cancelamento_adocoes_url }
      format.json { head :no_content }
    end
  end
end
