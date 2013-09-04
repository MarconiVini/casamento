class Administrador::AcompanhanteController < ApplicationController
	before_filter :require_authen                                                                           #Todos as requisições http nesse controle necessita authenticação
  #Ambos os before_filters estão disponiveis no application_controller (visivel em todos os controles do aplicativo)  
  layout "masters/administrador"	
	def index
		@follower = Follower.all
	end	

	def destroy
		u = Follower.find(params[:id])
		if u.destroy
			redirect_to administrador_acompanhante_index_path
		end
	end
end
