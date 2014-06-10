class CheckoutsController < ApplicationController
  before_action :find_tool, :set_checkout, only: [:show, :edit, :update, :destroy]

  # GET /checkouts
  def index
    @checkouts = @tool.checkouts
  end

  # GET /checkouts/1
  def show
    @checkout = @tool.checkouts.find(params[:id])
  end

  # GET /checkouts/new
  def new
    @checkout = @tool.checkout.new
  end

  # # GET /checkouts/1/edit
  # def edit
  # end

  # POST /checkouts
  def create
    @checkout = @tool.checkout.new(params[:checkout])

    if @checkout.save
      redirect_to @checkout, notice: 'Checkout was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /checkouts/1
  # def update
  #   if @checkout.update(checkout_params)
  #     redirect_to @checkout, notice: 'Checkout was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # DELETE /checkouts/1
  def destroy
    @checkout.destroy
    redirect_to checkouts_url, notice: 'Checkout was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkout
      @checkout = Checkout.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def checkout_params
      params.require(:checkout).permit(:email, :tool_id)
    end

    def find_tool
      @tool = Tool.find(params[:tool_id])
    end
end
