
class ComentarioArtigosController < ApplicationController
  # GET /comentario_artigos
  # GET /comentario_artigos.json
  def index
    @comentario_artigos = ComentarioArtigo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comentario_artigos }
    end
  end

  # GET /comentario_artigos/1
  # GET /comentario_artigos/1.json
  def show
    @comentario_artigo = ComentarioArtigo.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comentario_artigo }
    end
  end

  # GET /comentario_artigos/new
  # GET /comentario_artigos/new.json
  def new
    @comentario_artigo = ComentarioArtigo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comentario_artigo }
    end
  end

  # GET /comentario_artigos/1/edit
  def edit
    @comentario_artigo = ComentarioArtigo.find(params[:id])
  end

  # POST /comentario_artigos
  # POST /comentario_artigos.json
  def create
    @artigo = Artigo.find(params[:artigo_id])
    @comment = @artigo.comentario_artigos.create(params[:comentario_artigo])
    redirect_to artigo_path(@artigo)
  end

  # PUT /comentario_artigos/1
  # PUT /comentario_artigos/1.json
  def update
    @comentario_artigo = ComentarioArtigo.find(params[:id])

    respond_to do |format|
      if @comentario_artigo.update_attributes(params[:comentario_artigo])
        format.html { redirect_to @comentario_artigo, notice: 'Comentario artigo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comentario_artigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comentario_artigos/1
  # DELETE /comentario_artigos/1.json
  def destroy
    
    puts 'destroy----'
    @artigo = Artigo.find(params[:artigo_id])
    @comment = @artigo.comentario_artigos.find(params[:id])
    @comment.destroy
    redirect_to artigo_path(@artigo)

  end
end
