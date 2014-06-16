class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  http_basic_authenticate_with name: "maker", password: "lab"
  
  protect_from_forgery with: :exception

  def index
    @tools = Tool.all
    @inventories = Inventory.all
  end

end
