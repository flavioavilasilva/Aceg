class IdadesController < ApplicationController
  # GET /idades
  # GET /idades.json
  def index
    @idades = Idade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @idades }
    end
  end

  # GET /idades/1
  # GET /idades/1.json
  def show
    @idade = Idade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @idade }
    end
  end

  # GET /idades/new
  # GET /idades/new.json
  def new
    @idade = Idade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @idade }
    end
  end

  # GET /idades/1/edit
  def edit
    @idade = Idade.find(params[:id])
  end

  # POST /idades
  # POST /idades.json
  def create
    @idade = Idade.new(params[:idade])

    respond_to do |format|
      if @idade.save
        format.html { redirect_to @idade, notice: 'Idade was successfully created.' }
        format.json { render json: @idade, status: :created, location: @idade }
      else
        format.html { render action: "new" }
        format.json { render json: @idade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /idades/1
  # PUT /idades/1.json
  def update
    @idade = Idade.find(params[:id])

    respond_to do |format|
      if @idade.update_attributes(params[:idade])
        format.html { redirect_to @idade, notice: 'Idade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @idade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idades/1
  # DELETE /idades/1.json
  def destroy
    @idade = Idade.find(params[:id])
    @idade.destroy

    respond_to do |format|
      format.html { redirect_to idades_url }
      format.json { head :no_content }
    end
  end
end
