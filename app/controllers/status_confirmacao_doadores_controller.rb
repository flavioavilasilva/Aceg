class StatusConfirmacaoDoadoresController < ApplicationController
  # GET /status_confirmacao_doadores
  # GET /status_confirmacao_doadores.json
  def index
    @status_confirmacao_doadores = StatusConfirmacaoDoador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_confirmacao_doadores }
    end
  end

  # GET /status_confirmacao_doadores/1
  # GET /status_confirmacao_doadores/1.json
  def show
    @status_confirmacao_doador = StatusConfirmacaoDoador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_confirmacao_doador }
    end
  end

  # GET /status_confirmacao_doadores/new
  # GET /status_confirmacao_doadores/new.json
  def new
    @status_confirmacao_doador = StatusConfirmacaoDoador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_confirmacao_doador }
    end
  end

  # GET /status_confirmacao_doadores/1/edit
  def edit
    @status_confirmacao_doador = StatusConfirmacaoDoador.find(params[:id])
  end

  # POST /status_confirmacao_doadores
  # POST /status_confirmacao_doadores.json
  def create
    @status_confirmacao_doador = StatusConfirmacaoDoador.new(params[:status_confirmacao_doador])

    respond_to do |format|
      if @status_confirmacao_doador.save
        format.html { redirect_to @status_confirmacao_doador, notice: 'Status confirmacao doador was successfully created.' }
        format.json { render json: @status_confirmacao_doador, status: :created, location: @status_confirmacao_doador }
      else
        format.html { render action: "new" }
        format.json { render json: @status_confirmacao_doador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_confirmacao_doadores/1
  # PUT /status_confirmacao_doadores/1.json
  def update
    @status_confirmacao_doador = StatusConfirmacaoDoador.find(params[:id])

    respond_to do |format|
      if @status_confirmacao_doador.update_attributes(params[:status_confirmacao_doador])
        format.html { redirect_to @status_confirmacao_doador, notice: 'Status confirmacao doador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_confirmacao_doador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_confirmacao_doadores/1
  # DELETE /status_confirmacao_doadores/1.json
  def destroy
    @status_confirmacao_doador = StatusConfirmacaoDoador.find(params[:id])
    @status_confirmacao_doador.destroy

    respond_to do |format|
      format.html { redirect_to status_confirmacao_doadores_url }
      format.json { head :no_content }
    end
  end
end
