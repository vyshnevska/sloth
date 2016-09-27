class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate

  def index
    @odometer_crumbs = Crumb.visible.select{ |c| c.visual_options["odometer"]!= 'false' }.select{|c| !c.visual_options.has_key?('master_key') }
    @text_crumbs     = Crumb.visible.select{ |c| c.visual_options["odometer"] == 'false' }
  end

  def we_will_miss_you

  end

  protected

  def authenticate
    if  Rails.env.production?
      authenticate_or_request_with_http_basic do |username, password|
        username == Sloth::Application.config.http_auth.name && password == Sloth::Application.config.http_auth.password
      end
    end
  end
end
