class SearchesController < ApplicationController
 
  def index
    @tools = Tool.search do
      keywords params[:query]
    end.results
    
    @inventories = Inventory.search do
      keywords params[:query]
    end.results

    respond_to do |format|
      format.html { render template: "tools/index"  }
    end 
  end
  
end