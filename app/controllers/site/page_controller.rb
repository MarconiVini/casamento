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

end
