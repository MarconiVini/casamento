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
    @members = Member.find(:all, conditions: ["family_id = ?", params[:id]])
    @followers = Follower.find(:all, conditions: ["family_id = ?", params[:id]])
  end
  
  def create
    @family = Family.new(params[:family])    
    if @family.save
      u = Member.find_by_name(@family.name)
      
      if u.nil?
        novoMembro = Member.new({name: @family.name, family_id: @family.id})
        novoMembro.save!
      end
      
      redirect_to action: :index
    else
      flash[:notice] = "Nao foi possivel salvar o usuario."
      render action: :new
    end
  end
  
  def edit
    @family = Family.find(params[:id])
  end
  
  def update
    @family = Family.find(params[:id])
    if @family.update_attributes(params[:family])
      flash[:notice] = "O Membro \"#{@family.name}\" foi editado com sucesso !"
      redirect_to :action => :index
    else
      render :action => :edit
    end

  end
  
  def destroy
    @family = Family.find(params[:id])
    if @family.destroy
      redirect_to action: :index
    end
  end
  
end
