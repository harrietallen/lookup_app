class Lookup < ActiveRecord::Base
end

class Micropost < ActiveRecord::Base
  validates :url, length: { maximum: 50 }
  validates :name, length: { maximum: 50 }
  
end
