class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # def index
  #   # Encuentra los géneros 'Dama' y 'Caballero'
  #   @lady = Gender.find_by(name: 'Dama')
  #   @gentleman = Gender.find_by(name: 'Caballero')

  #   # Filtrar los productos según el parámetro 'gender'
  #   if params[:gender] == 'lady'
  #     @products = Product.where(gender: @lady)  # Filtra por el género 'Dama'
  #     @selected_gender = @lady  # Marca 'Dama' como género seleccionado
  #   elsif params[:gender] == 'gentleman'
  #     @products = Product.where(gender: @gentleman)  # Filtra por el género 'Caballero'
  #     @selected_gender = @gentleman  # Marca 'Caballero' como género seleccionado
  #   end
  # end

  def index
    @lady = Gender.find_by(name: 'Dama')
    @gentleman = Gender.find_by(name: 'Caballero')

    if params[:gender] == 'lady'
      @products = Product.where(gender: @lady)
      @selected_gender = @lady
    elsif params[:gender] == 'gentleman'
      @products = Product.where(gender: @gentleman)
      @selected_gender = @gentleman
    end

    @categories = @selected_gender.categories.distinct
  end


  def show
  end

  def new
    @product = Product.new
    @categories = Category.all # Asegúrate de definir correctamente @categories
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

    redirect_to root_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(
      :name,
      :description,
      :price,
      :ref,
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
