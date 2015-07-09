class PreferenciaController < ApplicationController
  # GET /preferencia
  # GET /preferencia.json
  def index
    @preferencia = Preferencium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @preferencia }
    end
  end

  # GET /preferencia/1
  # GET /preferencia/1.json
  def show
    @preferencium = Preferencium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @preferencium }
    end
  end

  # GET /preferencia/new
  # GET /preferencia/new.json
  def new
    @preferencium = Preferencium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @preferencium }
    end
  end

  # GET /preferencia/1/edit
  def edit
    @preferencium = Preferencium.find(params[:id])
  end

  # POST /preferencia
  # POST /preferencia.json
  def create
    @preferencium = Preferencium.new(params[:preferencium])

    respond_to do |format|
      if @preferencium.save
        format.html { redirect_to @preferencium, notice: 'Preferencium was successfully created.' }
        format.json { render json: @preferencium, status: :created, location: @preferencium }
      else
        format.html { render action: "new" }
        format.json { render json: @preferencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /preferencia/1
  # PUT /preferencia/1.json
  def update
    @preferencium = Preferencium.find(params[:id])

    respond_to do |format|
      if @preferencium.update_attributes(params[:preferencium])
        format.html { redirect_to @preferencium, notice: 'Preferencium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @preferencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preferencia/1
  # DELETE /preferencia/1.json
  def destroy
    @preferencium = Preferencium.find(params[:id])
    @preferencium.destroy

    respond_to do |format|
      format.html { redirect_to preferencia_url }
      format.json { head :no_content }
    end
  end
end
