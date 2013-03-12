class Administrador::HomemessageController < ApplicationController
  before_filter :require_authen                                                                           #Todos as requisições http nesse controle necessita authenticação
  #Ambos os before_filters estão disponiveis no application_controller (visivel em todos os controles do aplicativo)  
  layout "masters/administrador"
  def index
    @homemessages = Homemessage.all 
  end
  
  def aprovar
    @homemessage = Homemessage.find(params[:id])
    @homemessage.approved = true
    @homemessage.save!
    redirect_to :action => :index
  end
  
  def reprovar
    @homemessage = Homemessage.find(params[:id])
    @homemessage.approved = false
    @homemessage.save!
    redirect_to :action => :index
  end
  
  def destroy
    @family = Family.find(params[:id])
    if @family.destroy
      redirect_to action: :index
    end
  end
  
end
