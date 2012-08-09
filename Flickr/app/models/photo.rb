class Photo < ActiveRecord::Base
  attr_accessible :machine_tags, :per_page
  
  def read_message
    return flickr.interestingness.getList(:extras => self.machine_tags,:per_page => self.per_page)
  end  
end
