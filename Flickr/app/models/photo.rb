class Photo < ActiveRecord::Base
  attr_accessible :machine_tags, :per_page
  
  validates :machine_tags, :presence => true
  validates :per_page, :presence => true
    
  def read_message
    return flickr.interestingness.getList(:tags => params[:tags], :per_page => params[:per_page])
  end  
end
