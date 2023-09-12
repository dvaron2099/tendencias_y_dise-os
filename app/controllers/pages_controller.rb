class PagesController < ApplicationController
  def home
    # Obtén todos los productos disponibles.
    available_products = Product.where(availability: "Disponible")

    # Obtén 3 productos aleatorios de los disponibles.
    random_products = available_products.sample(3)

    # Asigna los productos aleatorios a la variable @initial para que estén disponibles en la vista.
    @initial = random_products
  end
end
