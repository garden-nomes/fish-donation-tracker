class CategoriesController < ApplicationController
  before_action :set_category, only: [:new, :show, :edit, :update, :destroy]

  # GET /categories
  def index
    @categories = Category.all
  end

  # GET /categories/new
  def new
  end

  # POST /categories
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      flash[:error] = @category.errors.full_messages.to_sentence
      redirect_to new_category_path
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
      redirect_to categories_path
    else
      flash[:error] = @category.errors.full_messages.to_sentence
      redirect_to edit_category_path(@category)
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
