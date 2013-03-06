class Administrador::FamiliesController < ApplicationController
  before_filter :require_authen                                                                           #Todos as requisições http nesse controle necessita authenticação
  #Ambos os before_filters estão disponiveis no application_controller (visivel em todos os controles do aplicativo)  
  layout "masters/administrador"
  
  
  def index
    @families = Family.all 
  end
  
  def new
    @family = Family.new
  end
  
  def show
    @family = Family.find(params[:id])
  end
  
  def create
    @family = Family.new(params[:family])
    if @family.save
      redirect_to action: :index
    else
      flash[:notice] = "Nao foi possivel salvar o usuario."
      render action: :new
    end
  end
  
  def edit
    @family = Family.find(params[:id])
  end
  
  def destroy
    @family = Family.find(params[:id])
    if @family.destroy
      redirect_to action: :index
    end
  end
  
end