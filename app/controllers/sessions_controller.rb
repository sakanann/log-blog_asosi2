class SessionsController < ApplicationController
  def new
  end
end

def create
  user = User.find_by(email: params[:session][:email].downcase)
end
