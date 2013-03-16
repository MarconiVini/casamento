class Administrador::FeeController < ApplicationController
  before_filter :require_authen                                                                           #Todos as requisições http nesse controle necessita authenticação
  #Ambos os before_filters estão disponiveis no application_controller (visivel em todos os controles do aplicativo)  
  layout "masters/administrador"
  def index
    @fee = Fee.all
  end
  
  def aprovar
    @fee = Fee.find(params[:id])
    @fee.confirm_deposit = true
    @fee.save!
    redirect_to :action => :index
  end
  
  def reprovar
    @fee = Fee.find(params[:id])
    @fee.confirm_deposit = false
    @fee.save!
    redirect_to :action => :index
  end
end