class Site::PresenceController < ApplicationController
  layout "masters/site"
  def index

  end

  def members
    @all = Member.all
    @query = params[:presence][:name]
    @members = Member.find(:all, conditions: ["lower(name) like ?", "%#{params[:presence][:name]}%"])
  end
  
  def family
    param = params[:parametrize_name]
    parametrize = param.gsub("-", " ").downcase
    @member_from_url = Member.find(:first, conditions: ["lower(name) like ?", "%#{parametrize}%"]); 
    @family = Family.find(@member_from_url.family_id)
    @members = Member.find(:all, conditions: ["family_id == ?", "#{@member_from_url.family_id}"])
  end
  
  def confirm
    param = params[:parametrize_name]
    parametrize = param.gsub("-", " ").downcase
    @member_from_url = Member.find(:first, conditions: ["lower(name) like ?", "%#{parametrize}%"]); 
    @member_from_url.confirmado = true    
    @member_from_url.save
    redirect_to family_path(param)
  end
 

  def cancel
    param = params[:parametrize_name]
    parametrize = param.gsub("-", " ").downcase
    @member_from_url = Member.find(:first, conditions: ["lower(name) like ?", "%#{parametrize}%"]); 
    @member_from_url.confirmado = false    
    @member_from_url.save
    redirect_to family_path(param)
  end

end