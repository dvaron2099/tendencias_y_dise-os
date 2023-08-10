class ProductController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    @product.save

    redirect_to product_path(@product)
  end

  def edit
  end

  def update
    @product.update(params[:product])

    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy

    redirect_to products_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit()
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
