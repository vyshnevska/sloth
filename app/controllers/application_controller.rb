class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @odometer_crumbs = Crumb.visible.select{ |c| c.visual_options["odometer"]!= 'false' }.select{|c| !c.visual_options.has_key?('master_key') }
    @text_crumbs     = Crumb.visible.select{ |c| c.visual_options["odometer"] == 'false' }
  end
end
