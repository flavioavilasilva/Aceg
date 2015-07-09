class StatusConfirmacaoAdotandosController < ApplicationController
  # GET /status_confirmacao_adotandos
  # GET /status_confirmacao_adotandos.json
  def index
    @status_confirmacao_adotandos = StatusConfirmacaoAdotando.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_confirmacao_adotandos }
    end
  end

  # GET /status_confirmacao_adotandos/1
  # GET /status_confirmacao_adotandos/1.json
  def show
    @status_confirmacao_adotando = StatusConfirmacaoAdotando.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_confirmacao_adotando }
    end
  end

  # GET /status_confirmacao_adotandos/new
  # GET /status_confirmacao_adotandos/new.json
  def new
    @status_confirmacao_adotando = StatusConfirmacaoAdotando.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_confirmacao_adotando }
    end
  end

  # GET /status_confirmacao_adotandos/1/edit
  def edit
    @status_confirmacao_adotando = StatusConfirmacaoAdotando.find(params[:id])
  end

  # POST /status_confirmacao_adotandos
  # POST /status_confirmacao_adotandos.json
  def create
    @status_confirmacao_adotando = StatusConfirmacaoAdotando.new(params[:status_confirmacao_adotando])

    respond_to do |format|
      if @status_confirmacao_adotando.save
        format.html { redirect_to @status_confirmacao_adotando, notice: 'Status confirmacao adotando was successfully created.' }
        format.json { render json: @status_confirmacao_adotando, status: :created, location: @status_confirmacao_adotando }
      else
        format.html { render action: "new" }
        format.json { render json: @status_confirmacao_adotando.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_confirmacao_adotandos/1
  # PUT /status_confirmacao_adotandos/1.json
  def update
    @status_confirmacao_adotando = StatusConfirmacaoAdotando.find(params[:id])

    respond_to do |format|
      if @status_confirmacao_adotando.update_attributes(params[:status_confirmacao_adotando])
        format.html { redirect_to @status_confirmacao_adotando, notice: 'Status confirmacao adotando was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_confirmacao_adotando.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_confirmacao_adotandos/1
  # DELETE /status_confirmacao_adotandos/1.json
  def destroy
    @status_confirmacao_adotando = StatusConfirmacaoAdotando.find(params[:id])
    @status_confirmacao_adotando.destroy

    respond_to do |format|
      format.html { redirect_to status_confirmacao_adotandos_url }
      format.json { head :no_content }
    end
  end
end
