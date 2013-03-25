#encoding: utf-8
class Site::ContatoController < ApplicationController
  layout "masters/internal"
  def index
    @contact = Contato.new
  end
  
  def submit
    @contact = Contato.create(params[:contato])
    if @contact.save
      flash[:notice] ="Parabéns, mensagem enviada com sucesso !"
      redirect_to contato_path
    else
      render :index
    end
  end
  
end
