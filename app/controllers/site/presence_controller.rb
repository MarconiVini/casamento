#encoding: utf-8
class Site::PresenceController < ApplicationController
  layout "masters/internal"
  def index

  end

  def members
    param = params[:presence][:name].downcase
    param = param.gsub(/(á|à|â|ä)/, 'a').gsub(/(é|è|ê|ë)/, 'e').gsub(/(í|ì|î|ï)/, 'i').gsub(/(ó|ò|ô|ö)/, 'o').gsub(/(ú|ù|û|ü)/, 'u')
    param = param.gsub(/(Á|À|Ä)/, 'A').gsub(/(É|È|Ê|Ë)/, 'E').gsub(/(Í|Ì|Î|Ï)/, 'I').gsub(/(Ó|Ò|Õ|Ö)/, 'O').gsub(/(Ú|Ù|Û|Ü)/, 'U')
    if param.length > 0
      @query = param
    else
      @query = "Lista completa de Convidados"
    end
    q = param
    @members = Member.find(:all, conditions: ["lower(name) like ?", "%#{q}%"])
    if @members.length < 1
      @query = param.split(" ")[0]
      q = param.split(" ")[0]
      @members = Member.find(:all, conditions: ["lower(name) like ?", "%#{q}%"])
    end
  end
  
  def family
    param = params[:parametrize_name]
    parametrize = param.gsub("-", " ").downcase
    @member_from_url = Member.find(:first, conditions: ["lower(name) like ?", "%#{parametrize}%"]); 
    @family = Family.find(@member_from_url.family_id)
    @members = Member.find(:all, conditions: ["family_id = ?", "#{@member_from_url.family_id}"])
    @followers = Follower.find(:all, conditions: ["family_id = ?", "#{@member_from_url.family_id}"])
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
  
  def add_follower
    family = params[:family]
    name = params[:follower]
    descricao = params[:text][:detalhes]
    @follower = Follower.create(name: name, family_id: family, description: descricao)
    
    if @follower.save
      redirect_to :family
    else
      error_messages = ""
      @follower.errors.full_messages.each do |m|
        error_messages << "#{m}<br />"
      end
      error_messages["Description"] = "Detalhes" unless error_messages["Description"].nil?
      error_messages["Name"] = "Nome" unless error_messages["Name"].nil?
      redirect_to :family, :flash => {:notice => "Não foi possivel adicionar o membro #{name} pelos seguintes motivos: <br /> #{error_messages}"}
    end
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

end