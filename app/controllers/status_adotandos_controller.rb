class StatusAdotandosController < ApplicationController
  # GET /status_adotandos
  # GET /status_adotandos.json
  def index
    @status_adotandos = StatusAdotando.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_adotandos }
    end
  end

  # GET /status_adotandos/1
  # GET /status_adotandos/1.json
  def show
    @status_adotando = StatusAdotando.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_adotando }
    end
  end

  # GET /status_adotandos/new
  # GET /status_adotandos/new.json
  def new
    @status_adotando = StatusAdotando.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_adotando }
    end
  end

  # GET /status_adotandos/1/edit
  def edit
    @status_adotando = StatusAdotando.find(params[:id])
  end

  # POST /status_adotandos
  # POST /status_adotandos.json
  def create
    @status_adotando = StatusAdotando.new(params[:status_adotando])

    respond_to do |format|
      if @status_adotando.save
        format.html { redirect_to @status_adotando, notice: 'Status adotando was successfully created.' }
        format.json { render json: @status_adotando, status: :created, location: @status_adotando }
      else
        format.html { render action: "new" }
        format.json { render json: @status_adotando.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_adotandos/1
  # PUT /status_adotandos/1.json
  def update
    @status_adotando = StatusAdotando.find(params[:id])

    respond_to do |format|
      if @status_adotando.update_attributes(params[:status_adotando])
        format.html { redirect_to @status_adotando, notice: 'Status adotando was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_adotando.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_adotandos/1
  # DELETE /status_adotandos/1.json
  def destroy
    @status_adotando = StatusAdotando.find(params[:id])
    @status_adotando.destroy

    respond_to do |format|
      format.html { redirect_to status_adotandos_url }
      format.json { head :no_content }
    end
  end
end
