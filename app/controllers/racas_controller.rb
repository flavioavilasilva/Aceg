class RacasController < ApplicationController
  # GET /racas
  # GET /racas.json
  def index
    @racas = Raca.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @racas }
    end
  end

  # GET /racas/1
  # GET /racas/1.json
  def show
    @raca = Raca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @raca }
    end
  end

  # GET /racas/new
  # GET /racas/new.json
  def new
    @raca = Raca.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @raca }
    end
  end

  # GET /racas/1/edit
  def edit
    @raca = Raca.find(params[:id])
  end

  # POST /racas
  # POST /racas.json
  def create
    @raca = Raca.new(params[:raca])

    respond_to do |format|
      if @raca.save
        format.html { redirect_to @raca, notice: 'Raca was successfully created.' }
        format.json { render json: @raca, status: :created, location: @raca }
      else
        format.html { render action: "new" }
        format.json { render json: @raca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /racas/1
  # PUT /racas/1.json
  def update
    @raca = Raca.find(params[:id])

    respond_to do |format|
      if @raca.update_attributes(params[:raca])
        format.html { redirect_to @raca, notice: 'Raca was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @raca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /racas/1
  # DELETE /racas/1.json
  def destroy
    @raca = Raca.find(params[:id])
    @raca.destroy

    respond_to do |format|
      format.html { redirect_to racas_url }
      format.json { head :no_content }
    end
  end
end
