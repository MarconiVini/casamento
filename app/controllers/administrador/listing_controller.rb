class Administrador::ListingController < ApplicationController
	before_filter :require_authen                                                                           #Todos as requisições http nesse controle necessita authenticação
	#Ambos os before_filters estão disponiveis no application_controller (visivel em todos os controles do aplicativo)  
	#layout "masters/administrador"
	
	def index
		@u = Member.order("name ASC").where(confirmado: true)
	end

end
