class Administrador::MembersController < ApplicationController
  before_filter :require_authen
  layout "masters/administrador"
  def index
    @membros = Member.all
  end

  def new
    @member = Member.new
    @families = Family.all
  end

  def create
    @member = Member.new(params[:member])
    @member.family_id = params[:familia_id]

    if @member.save
      redirect_to action: :index
    else
      @families = Family.all
      flash[:notice] = "Nao foi possivel salvar o novo Membro."
      render action: :new, families: @families
    end
  end

  def edit
    @member = Member.find(params[:id])
    @families = Family.all
  end

  def update
    @member = Member.find(params[:id])
    if @member.update_attributes(params[:member])
      flash[:notice] = "O Membro \"#{@member.name}\" foi editado com sucesso !"
      redirect_to :action => :index
    else
      render :action => :edit
    end

  end

  def destroy
    @member = Member.find(params[:id])
    if @member.destroy
      redirect_to action: :index
    end
  end

end