class Site::PresenceController < ApplicationController
  layout "masters/site"
  def index

  end

  def members
    @all = Member.all
    @query = params[:presence][:name]
    @members = Member.find(:all, conditions: ["name like ?", "%#{params[:presence][:name]}%"])
  end

end