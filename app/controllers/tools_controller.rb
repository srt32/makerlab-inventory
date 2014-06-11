class ToolsController < ApplicationController
  before_action :set_tool, only: [:show, :edit, :update, :destroy]

  def index
    @tools = Tool.all
    @inventories = Inventory.all
    @checkouts = Checkout.all
  end

  def show
    @checkout = @tool.checkouts.new
  end

  def new
    @tool = Tool.new
  end

  def edit
  end

  def create
    @tool = Tool.new(tool_params)

    if @tool.save
      redirect_to @tool, notice: 'Tool was successfully created.'
    else
      render :new
    end
  end

  def update
    if @tool.update(tool_params)
      redirect_to @tool, notice: 'Tool was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @tool.destroy
    redirect_to tools_url, notice: 'Tool was successfully destroyed.'
  end

  private
    def set_tool
      @tool = Tool.find(params[:id])
    end

    def tool_params
      params.require(:tool).permit(:name, :location, :quantity, :available)
    end
end
