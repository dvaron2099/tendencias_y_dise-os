class PagesController < ApplicationController
  def home
    # Obtén todos los productos disponibles.
    available_products = Product.where(availability: "Disponible")

    # Obtén 3 productos aleatorios de los disponibles.
    random_products = available_products.sample(5)

    # Asigna los productos aleatorios a la variable @initial para que estén disponibles en la vista.
    @initial = random_products
    @first_two_products = @initial.first(2)
  end
end
## <div class="information-home">
##   <div class="row">
##     <div class="information-content m-2 col-lg-10 col-12">
##       <h3 class="title">¿Quiénes somos?</h3>
##       <p>Somos una empresa ubicada en Cúcuta, especializada en la venta al por mayor y al detal de pantalones para damas y caballeros, así como chalecos exclusivos para mujeres. Nuestra pasión por la moda y la atención a los detalles nos impulsan a ofrecer productos de alta calidad que reflejen tu estilo único y te hagan sentir confiado en cada ocasión. Desde jeans versátiles hasta shorts y bermudas de moda, nuestra amplia gama de opciones te permite expresar tu personalidad a través de tu vestimenta.</p>
##     </div>
##     <div class="col-lg-2 col-12 d-none d-md-block">
##       <%= cl_image_tag User.first.photos[3].url, class: "banner-image imagen-2 side-image" %>
##     </div>
##   </div>
## </div>
