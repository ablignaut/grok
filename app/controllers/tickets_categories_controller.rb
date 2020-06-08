class TicketsCategoriesController < ApplicationController
  before_action :set_tickets_category, only: [:show, :edit, :update, :destroy]

  # GET /tickets_categories
  # GET /tickets_categories.json
  def index
    @tickets_categories = TicketsCategory.all
  end

  # GET /tickets_categories/1
  # GET /tickets_categories/1.json
  def show
  end

  # GET /tickets_categories/new
  def new
    @tickets_category = TicketsCategory.new
  end

  # GET /tickets_categories/1/edit
  def edit
  end

  # POST /tickets_categories
  # POST /tickets_categories.json
  def create
    @tickets_category = TicketsCategory.new(tickets_category_params)

    respond_to do |format|
      if @tickets_category.save
        format.html { redirect_to @tickets_category, notice: 'Tickets category was successfully created.' }
        format.json { render :show, status: :created, location: @tickets_category }
      else
        format.html { render :new }
        format.json { render json: @tickets_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickets_categories/1
  # PATCH/PUT /tickets_categories/1.json
  def update
    respond_to do |format|
      if @tickets_category.update(tickets_category_params)
        format.html { redirect_to @tickets_category, notice: 'Tickets category was successfully updated.' }
        format.json { render :show, status: :ok, location: @tickets_category }
      else
        format.html { render :edit }
        format.json { render json: @tickets_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets_categories/1
  # DELETE /tickets_categories/1.json
  def destroy
    @tickets_category.destroy
    respond_to do |format|
      format.html { redirect_to tickets_categories_url, notice: 'Tickets category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tickets_category
      @tickets_category = TicketsCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tickets_category_params
      params.require(:tickets_category).permit(:ticket_id, :category_id)
    end
end
