class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  def index
    @categories = Category.all
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # POST /categories
  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Category created!"
      redirect_to categories_path
    else
      flash[:error] = "Unable to create category."
      render :new
    end
  end

  # GET /category/:id
  def show
    redirect_to action: 'index'
  end

  # GET /category/:id/edit
  def edit
  end

  # PATCH /category/:id
  def update
    if @category.update(category_params)
      flash[:success] = "Category updated!"
      redirect_to categories_path
    else
      flash[:error] = "Unable to update category."
      render :edit
    end
  end

  # DELETE /category/:id
  def destroy
    if @category.destroy
      flash[:success] = "Saved!"
    else
      flash[:error] = "Unable to delete category."
    end

    redirect_to action: 'index'
  end

  private

  def category_params
    params.require(:category).permit(:name, :food, :price)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
