class Photo < ActiveRecord::Base
  attr_accessible :machine_tags, :per_page
  
  def read_message
    return flickr.interestingness.getList(:tags => params[:tags], :per_page => params[:per_page])
  end  
end
