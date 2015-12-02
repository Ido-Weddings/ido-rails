class SessionsController < ApplicationController
  def new
  end

  def create
    enterprise = Enterprise.find_by_email(params[:email])
    # If the enterprise exists AND the password entered is correct.
    if enterprise && enterprise.authenticate(params[:password])
      # Save the enterprise id inside the browser cookie. This is how we keep the enterprise
      # logged in when they navigate around our website.
      session[:enterprise_id] = enterprise.id
      redirect_to '/'
    else
    # If enterprise's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  def destroy
    session[:enterprise_id] = nil
    redirect_to '/login'
  end

end
