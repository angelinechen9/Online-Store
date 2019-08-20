class AccessController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize
  
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    session[:user_id] = user.id
    redirect_to shopper_index_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to shopper_index_url, notice: "logged out"
  end
end
