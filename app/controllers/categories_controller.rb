class CategoriesController < ApplicationController
  before_action :set_product
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = @product.categories.build
  end

  def edit
  end

  def create
    @category = @product.categories.build(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to url_for(@category.path_args), notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to url_for(@category.path_args), notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to url_for(@category.path_args), notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

  def set_product
    @product = Product.find(params[:product_id])
  end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name, :description, :points)
    end
end
