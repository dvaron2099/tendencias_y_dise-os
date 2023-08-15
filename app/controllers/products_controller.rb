class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @lady = Gender.find_by(name: 'Dama')
    @gentleman = Gender.find_by(name: 'Caballero')

    if params[:gender] == 'lady'
      @products = Product.where(gender_id: @lady.id)
    elsif params[:gender] == 'gentleman'
      @products = Product.where(gender_id: @gentleman.id)
    end
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product.destroy

    redirect_to products_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(
      :name,
      :description,
      :price,
      :stock,
      :availability,
      :gender_id,
      :category_id,
      photos: [],
      color_ids: [],   # Para permitir múltiples colores asociados
      size_ids: []     # Para permitir múltiples tallas asociadas
    )
  end

  def set_product
    @product = Product.find(params[:id])
  end
end