class AdocaoConfirmacaoChavesController < ApplicationController
  # GET /adocao_confirmacao_chaves
  # GET /adocao_confirmacao_chaves.json
  def index
    @adocao_confirmacao_chaves = AdocaoConfirmacaoChave.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adocao_confirmacao_chaves }
    end
  end

  # GET /adocao_confirmacao_chaves/1
  # GET /adocao_confirmacao_chaves/1.json
  def show
    @adocao_confirmacao_chafe = AdocaoConfirmacaoChave.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @adocao_confirmacao_chafe }
    end
  end

  # GET /adocao_confirmacao_chaves/new
  # GET /adocao_confirmacao_chaves/new.json
  def new
    @adocao_confirmacao_chafe = AdocaoConfirmacaoChave.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @adocao_confirmacao_chafe }
    end
  end

  # GET /adocao_confirmacao_chaves/1/edit
  def edit
    @adocao_confirmacao_chafe = AdocaoConfirmacaoChave.find(params[:id])
  end

  # POST /adocao_confirmacao_chaves
  # POST /adocao_confirmacao_chaves.json
  def create
    @adocao_confirmacao_chafe = AdocaoConfirmacaoChave.new(params[:adocao_confirmacao_chafe])

    respond_to do |format|
      if @adocao_confirmacao_chafe.save
        format.html { redirect_to @adocao_confirmacao_chafe, notice: 'Adocao confirmacao chave was successfully created.' }
        format.json { render json: @adocao_confirmacao_chafe, status: :created, location: @adocao_confirmacao_chafe }
      else
        format.html { render action: "new" }
        format.json { render json: @adocao_confirmacao_chafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /adocao_confirmacao_chaves/1
  # PUT /adocao_confirmacao_chaves/1.json
  def update
    @adocao_confirmacao_chafe = AdocaoConfirmacaoChave.find(params[:id])

    respond_to do |format|
      if @adocao_confirmacao_chafe.update_attributes(params[:adocao_confirmacao_chafe])
        format.html { redirect_to @adocao_confirmacao_chafe, notice: 'Adocao confirmacao chave was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @adocao_confirmacao_chafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adocao_confirmacao_chaves/1
  # DELETE /adocao_confirmacao_chaves/1.json
  def destroy
    @adocao_confirmacao_chafe = AdocaoConfirmacaoChave.find(params[:id])
    @adocao_confirmacao_chafe.destroy

    respond_to do |format|
      format.html { redirect_to adocao_confirmacao_chaves_url }
      format.json { head :no_content }
    end
  end
end
