class JavascriptsController < ApplicationController
  
  def dynamic_cidades
    if params[:id].present?
      @cidades = Estado.find(params[:id]).cidade
    else
      @cidades = []
    end

    respond_to do |format|
      format.js
    end

  end

end
