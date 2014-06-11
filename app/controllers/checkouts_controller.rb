class CheckoutsController < ApplicationController
  before_action :find_tool
  skip_before_action :find_tool, only: [:index]   
  before_action :set_checkout, only: [:show, :edit, :update, :destroy]

  def index
    @checkouts = Checkout.all
  end

  def show
    @checkout = @tool.checkouts.find(params[:id])
  end

  def new
    @checkout = @tool.checkouts.new
  end

  def edit
  end

  def create
    @checkout = @tool.checkouts.new(checkout_params)
    if @checkout.save
      redirect_to root_url, notice: 'You successfully checked this tool out.'
    else
      render :new
    end
  end

  def update
    if @checkout.update(checkout_params)
      redirect_to root_url, notice: 'Checkout was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @checkout = @tool.checkouts.

    respond_to do |format|
      format.html { redirect_to "/", notice: 'You successfully returned the item.' }
      format.json { head :no_content }
    end
  end

  private
    def set_checkout
      @checkout = Checkout.find(params[:id])
    end

    def checkout_params
      params.require(:checkout).permit(:email, :tool_id)
    end

    def find_tool
      @tool = Tool.find(params[:tool_id])
    end
end
