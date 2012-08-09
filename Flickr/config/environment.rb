# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Flickr::Application.initialize!

require 'flickraw'

FlickRaw.api_key="18faee1276cd74d2fd1f46d573be889f"
FlickRaw.shared_secret="e86ea0f91961e3d8"

# list   = flickr.photos.getRecent

# id     = list[0].id
# secret = list[0].secret
# info = flickr.photos.getInfo :photo_id => id, :secret => secret

# puts info.title           # => "PICT986"
# puts info.dates.taken     # => "2006-07-06 15:16:18"

# sizes = flickr.photos.getSizes :photo_id => id

# original = sizes.find {|s| s.label == 'Original' }
# puts original.width       # => "800" -- may fail if they have no original marked image
