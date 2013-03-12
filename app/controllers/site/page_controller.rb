#encoding: utf-8
class Site::PageController < ApplicationController
  layout "masters/internal"
  #layout "masters/internal", except: [:index]
  def index
    @mensage = Homemessage.new
    @mensages = Homemessage.find(:all, limit: 2, :conditions => ["approved = ?", true], :order => "created_at DESC")
    render :layout => "masters/site"      
  end    
  
  def cotas
    
  end
  
  def local
    
  end
  
  def album
    @pag = params[:page_num]
    @range = case @pag
      when "amigos" then 1..21
      when "familia" then 1..35
      when "noivos" then 1..15
    end
    render :layout => "masters/layoutimagens"
  end
  
  def submit
    @mensage = Homemessage.create(params[:homemessage])
    if @mensage.save
      flash[:notice] ="Parabéns, mensagem enviada com sucesso !"
      redirect_to :action => :index
    else
      erros = @mensage.errors.full_messages
      erros.each do |m|
        m["Name"] = "Nome" unless m["Name"].nil?
        m["Message"] = "Mensagem" unless m["Message"].nil?
      end
      flash[:notice] ="Desculpe,não foi possível enviar a mensagem ! Verifique os erros e tente novamente."
      flash[:errors] = erros
      redirect_to :action => :index
    end
  end

end
