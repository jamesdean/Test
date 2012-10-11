class SyncsController < ApplicationController
  
  respond_to :json, :js, :html
  def index
    @syncs = Sync.all
    @sync = Sync.new  # added
    
    respond_to do |format|
      format.html
      #format.json { render json: @sync }
    end
  end
   
  def create
   
  end
  
  def update    
    @sync = Sync.find(:last)   
    @sync.update_attributes(params[:sync])
    
    respond_to do |format|
        #format.html
        format.json { render json: @sync, status: :created, location: @sync }
        format.js  {render :content_type => 'text/javascript'}
    end
    
  end

end
