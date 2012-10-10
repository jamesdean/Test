class SyncsController < ApplicationController
  
  respond_to :json, :js, :html
  def index
    @syncs = Sync.all
    #@sync = Sync.new  # added
    
    @sync = Sync.find(:first)    
    @sync = Sync.new unless @sync
    
    respond_to do |format|
      format.html
      #format.json { render json: @sync }
    end
  end
   
  def create
    #@sync = Sync.new(params[:sync])
    #@sync.save
  end
  
  def update
    #@sync = Sync.new(params[:sync])
    respond_to do |format|
      format.html
    end    
  end

end
