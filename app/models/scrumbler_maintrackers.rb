class ScrumblerMaintrackers < ActiveRecord::Base
  unloadable
  
  belongs_to :project
  belongs_to :tracker
  
end
