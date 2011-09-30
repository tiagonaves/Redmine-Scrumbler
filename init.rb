require 'redmine'
require_dependency "scrumbler"

Dispatcher.to_prepare :redmine_scrumbler do
  
end

Redmine::Plugin.register :redmine_scrumbler do
  name 'Redmine Scrumbler plugin'
  author 'Alexandr_Andrianov, Dmitry Kuzmin, Ivan Kotenko'
  description 'This is a scrum plugin for Redmine'
  version '0.0.1'
  
  project_module :redmine_scrumbler do
    permission :scrumbler, :scrumbler => :index
    permission :scrumbler_settings, :scrumbler => :settings, :public => false
  end
  
  menu :project_menu, :redmine_scrumbler, { :controller => 'scrumbler', :action => 'index' }, :caption => 'Scrumbler', :after => :activity, :param => :project_id
  
end
