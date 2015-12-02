class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #skip_before_action :verify_authenticity_token, if: :json_request?
  #protect_from_forgery with: :exception

  # protected
  # def json_request?
  #   request.format.json?
  # end

  def current_enterprise
    @current_enterprise ||= Enterprise.find(session[:enterprise_id]) if session[:enterprise_id]
  end
  helper_method :current_enterprise

  def authorize
    redirect_to '/login' unless current_enterprise
  end


end
