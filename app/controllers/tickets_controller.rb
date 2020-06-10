class TicketsController < ApplicationController
  before_action :set_product
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = @product.tickets.all
  end

  def show
  end

  def new
    @ticket = @product.tickets.build
  end

  def edit
  end

  def create
    @ticket = @product.tickets.build(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to url_for(@ticket.path_args), notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to url_for(@ticket.path_args), notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to url_for(@ticket.path_args), notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    def set_product
      @product = Product.find(params[:product_id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_params
      attributes = [
        :url,
        [{:category_ids=>[]}]
      ]
      params.require(:ticket).permit(*attributes)
    end
end
