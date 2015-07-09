class StatusAtivsController < ApplicationController
  # GET /status_ativs
  # GET /status_ativs.json
  def index
    @status_ativs = StatusAtiv.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_ativs }
    end
  end

  # GET /status_ativs/1
  # GET /status_ativs/1.json
  def show
    @status_ativ = StatusAtiv.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_ativ }
    end
  end

  # GET /status_ativs/new
  # GET /status_ativs/new.json
  def new
    @status_ativ = StatusAtiv.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_ativ }
    end
  end

  # GET /status_ativs/1/edit
  def edit
    @status_ativ = StatusAtiv.find(params[:id])
  end

  # POST /status_ativs
  # POST /status_ativs.json
  def create
    @status_ativ = StatusAtiv.new(params[:status_ativ])

    respond_to do |format|
      if @status_ativ.save
        format.html { redirect_to @status_ativ, notice: 'Status ativ was successfully created.' }
        format.json { render json: @status_ativ, status: :created, location: @status_ativ }
      else
        format.html { render action: "new" }
        format.json { render json: @status_ativ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_ativs/1
  # PUT /status_ativs/1.json
  def update
    @status_ativ = StatusAtiv.find(params[:id])

    respond_to do |format|
      if @status_ativ.update_attributes(params[:status_ativ])
        format.html { redirect_to @status_ativ, notice: 'Status ativ was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_ativ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_ativs/1
  # DELETE /status_ativs/1.json
  def destroy
    @status_ativ = StatusAtiv.find(params[:id])
    @status_ativ.destroy

    respond_to do |format|
      format.html { redirect_to status_ativs_url }
      format.json { head :no_content }
    end
  end
end
