class Site::PageController < ApplicationController
  layout "masters/internal"
  #layout "masters/internal", except: [:index]
  def index
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
  
  def contact
    
  end

end
