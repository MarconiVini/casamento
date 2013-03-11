class Site::ContatoController < ApplicationController
  layout "masters/internal"
  def index
    @contact = Contato.new
  end
  
  def submit
    @contact = Contato.create(params[:contato])
    if @contact.save
      redirect_to :index, :flash => {:notice => "Mensagem enviada com sucesso !"}
    else
      render :index
    end
  end
  
end
