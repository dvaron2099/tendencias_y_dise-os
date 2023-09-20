# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "Reseteando base de datos"

User.destroy_all
ProductColor.destroy_all
ProductSize.destroy_all
Product.destroy_all
Category.destroy_all
Gender.destroy_all
Color.destroy_all
Size.destroy_all

puts "Creando Usuario Administrador"
user = User.create(
  email: 'admin@gmail.com',
  password: "123456",
)
puts ""
puts ""
puts "Creando Generos"
puts "Caballero"
gentleman = Gender.create(name: "Caballero")
puts "Dama"
lady = Gender.create(name: "Dama")
puts ""
puts ""
puts "Creando Categorias"
#######################################################################################################


puts "Bermuda de drill caballero"
short_drill_men = Category.create(category_type: "Bermuda de drill", gender_id: gentleman.id)
puts "Bermuda de jean caballero"
short_jean_men = Category.create(category_type: "Bermuda de jean", gender_id: gentleman.id)
puts "Jeans para caballero"
jean_men = Category.create(category_type: "Jeans", gender_id: gentleman.id)

#######################################################################################################

puts "Torero en drill dama"
torero_lady = Category.create(category_type: "Torero en drill", gender_id: lady.id)
puts "Pantalon en drill dama"
pantalon_drill_lady = Category.create(category_type: "Pantalon en drill", gender_id: lady.id)
puts "Cargo dama"
cargo_lady = Category.create(category_type: "Cargo", gender_id: lady.id)
puts "Jeans de dama"
jean_lady = Category.create(category_type: "Jeans", gender_id: lady.id)
puts "Short de jean"
short_jean_lady = Category.create(category_type: "Short de jean", gender_id: lady.id)
puts "Chaleco de jean"
chaleco_jean_lady = Category.create(category_type: "Chaleco de jean", gender_id: lady.id)
puts "Chaqueta de jean"
chaqueta_jean_lady = Category.create(category_type: "Chaqueta de jean", gender_id: lady.id)
puts "Falda short de jean"
skirt_jean_lady = Category.create(category_type: "Falda short de jean", gender_id: lady.id)


puts ""
puts ""
puts "Creando Colores"
puts "Gris claro"
light_grey = Color.create(
  name: "Gris claro",
  hex_code: "#8c8c8c"
)
puts "Morado"
purple = Color.create(
  name: "Morado",
  hex_code: "#a8a1d5"
)
puts "Gris oscuro"
dark_grey = Color.create(
  name: "Gris oscuro",
  hex_code: "#545454"
)
puts "Azul oscuro"
dark_blue = Color.create(
  name: "Azul marino",
  hex_code: "#102645"
)
puts "Azul medio"
medium_blue = Color.create(
  name: "Azul medio",
  hex_code: "#364d73"
)
puts "Azul claro"
light_blue = Color.create(
  name: "Azul claro",
  hex_code: "#139ad3"
)
puts "Negro"
black = Color.create(
  name: "Negro",
  hex_code: "#000000"
)
puts "Blanco"
white = Color.create(
  name: "Blanco",
  hex_code: "#ffffff"
)
puts "Amarillo"
yellow = Color.create(
  name: "Amarillo",
  hex_code: "#f8d49a"
)

puts "Rosado"
pink = Color.create(
  name: "Rosado",
  hex_code: "#d37680"
)

puts "Verde Oliva"
green = Color.create(
  name: "Verde Oliva",
  hex_code: "#1f4215"
)

puts "Cafe"
coffe = Color.create(
  name: "Cafe",
  hex_code: "#765638"
)

puts "Beige"
beige = Color.create(
  name: "Beige",
  hex_code: "#9e8c80"
)

puts "Naranja"
orange = Color.create(
  name: "Naranja",
  hex_code: "#f17778"
)
puts ""
puts ""
puts "Creando Tallas"
puts "Talla 6 "
size_6 = Size.create(measure: 6)
puts "Talla 8 "
size_8 = Size.create(measure: 8)
puts "Talla 10"
size_10 = Size.create(measure: 10)
puts "Talla 12"
size_12 = Size.create(measure: 12)
puts "Talla 14"
size_14 = Size.create(measure: 14)
puts "Talla 16"
size_16 = Size.create(measure: 16)
puts "Talla 18"
size_18 = Size.create(measure: 18)
puts "Talla 20"
size_20 = Size.create(measure: 20)
puts "Talla 22"
size_22 = Size.create(measure: 22)
puts "Talla 24"
size_24 = Size.create(measure: 24)
puts "Talla 28"
size_28 = Size.create(measure: 28)
puts "Talla 30"
size_30 = Size.create(measure: 30)
puts "Talla 32"
size_32 = Size.create(measure: 32)
puts "Talla 34"
size_34 = Size.create(measure: 34)
puts "Talla 36"
size_36 = Size.create(measure: 36)
puts "Talla 38"
size_38 = Size.create(measure: 38)
puts "Talla XS"
size_XS = Size.create(measure: "XS")
puts "Talla S"
size_S = Size.create(measure: "S")
puts "Talla M"
size_M = Size.create(measure: "M")
puts "Talla XL"
size_XL = Size.create(measure: "XL")
puts "Talla XXL"
size_XXL = Size.create(measure: "XXL")
puts ""
puts ""
puts "Creando Productos"
puts ""
puts "Productos para Caballero"
puts ""
puts "producto 1"
product_1 = Product.create(
  name: "Bermuda Blue Jean - 4012",
  description: "Bermuda de tela jean azul oscuro para caballero",
  price: 30000,
  ref: 4012,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: short_jean_men.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_1.id, color_id: dark_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_1.id, size_id: size_28.id)
ProductSize.create(product_id: product_1.id, size_id: size_30.id)
ProductSize.create(product_id: product_1.id, size_id: size_32.id)
ProductSize.create(product_id: product_1.id, size_id: size_36.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133940/Caballero/Bermuda%20Hombre/Bermuda%20Blue%20Jean%20-%204012/4012_stlsz1.jpg")
product_1.photos.attach(io: file, filename: "Bermuda_Blue_Jean_4012.jpg" , content_type: "image/jpg")

## uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda Blue Jean - 4012/4012.jpeg")
## product_1.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda_Blue_Jean_4012.jpeg", content_type: "image/jpeg")

puts "producto 2"
product_2 = Product.create(
  name: "Bermuda Blue Jean - 4013",
  description: "Bermuda de tela jean azul oscuro para caballero",
  price: 30000,
  ref: 4013,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: short_jean_men.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_2.id, color_id: dark_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_2.id, size_id: size_32.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda Blue Jean - 4013/Bermuda Blue Jean - 4013.jpeg")
# product_2.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda_Blue_Jean_4013.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133941/Caballero/Bermuda%20Hombre/Bermuda%20Blue%20Jean%20-%204013/Bermuda_Blue_Jean_-_4013_rt8561.jpg")
product_2.photos.attach(io: file, filename: "Bermuda_Blue_Jean_4013.jpg" , content_type: "image/jpg")


puts "producto 3"
product_3 = Product.create(
  name: "Bermuda Blue Jean - 4014",
  description: "Bermuda de tela jean azul oscuro para caballero",
  price: 30000,
  ref: 4014,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: short_jean_men.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_3.id, color_id: dark_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_3.id, size_id: size_28.id)
ProductSize.create(product_id: product_3.id, size_id: size_30.id)
ProductSize.create(product_id: product_3.id, size_id: size_32.id)
ProductSize.create(product_id: product_3.id, size_id: size_36.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda Blue Jean - 4014/Bermuda Blue Jean - 4014.jpeg")
# product_3.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda_Blue_Jean_4014.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133941/Caballero/Bermuda%20Hombre/Bermuda%20Blue%20Jean%20-%204014/Bermuda_Blue_Jean_-_4014_zcbvve.jpg")
product_3.photos.attach(io: file, filename: "Bermuda_Blue_Jean_4014.jpg" , content_type: "image/jpg")

puts "producto 4"
product_4 = Product.create(
  name: "Bermuda Drill - 4029",
  description: "Bermuda de tela drill, varios colores disponibles",
  price: 30000,
  ref: 4029,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: short_drill_men.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_4.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_4.id, color_id: coffe.id)
ProductColor.create(product_id: product_4.id, color_id: beige.id)
ProductColor.create(product_id: product_4.id, color_id: green.id)

# # # Asocia los tallas con el producto
ProductSize.create(product_id: product_4.id, size_id: size_28.id)
ProductSize.create(product_id: product_4.id, size_id: size_30.id)
ProductSize.create(product_id: product_4.id, size_id: size_32.id)
ProductSize.create(product_id: product_4.id, size_id: size_34.id)
ProductSize.create(product_id: product_4.id, size_id: size_36.id)


# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda Drill - 4029/Bermuda drill 1.jpeg")
# product_4.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda drill 1.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda Drill - 4029/Bermuda drill 2.jpeg")
# product_4.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda drill 2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda Drill - 4029/Bermuda drill 3.jpeg")
# product_4.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda drill 3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda Drill - 4029/Bermuda drill 4.jpeg")
# product_4.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda drill 4.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda Drill - 4029/Bermuda drill 5.jpeg")
# product_4.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda drill 5.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda Drill - 4029/Bermuda drill 6.jpeg")
# product_4.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda drill 6.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda Drill - 4029/Bermuda drill 7.jpeg")
# product_4.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda drill 7.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda Drill - 4029/Bermuda drill 8.jpeg")
# product_4.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda drill 8.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133941/Caballero/Bermuda%20Hombre/Bermuda%20Drill%20-%204029/Bermuda_drill_1_mavjfu.jpg")
product_4.photos.attach(io: file, filename: "Bermuda drill 1.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133941/Caballero/Bermuda%20Hombre/Bermuda%20Drill%20-%204029/Bermuda_drill_2_ubs2po.jpg")
product_4.photos.attach(io: file, filename: "Bermuda drill 2.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133942/Caballero/Bermuda%20Hombre/Bermuda%20Drill%20-%204029/Bermuda_drill_3_d4zvyt.jpg")
product_4.photos.attach(io: file, filename: "Bermuda drill 3.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133943/Caballero/Bermuda%20Hombre/Bermuda%20Drill%20-%204029/Bermuda_drill_4_ijldnk.jpg")
product_4.photos.attach(io: file, filename: "Bermuda drill 4.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133944/Caballero/Bermuda%20Hombre/Bermuda%20Drill%20-%204029/Bermuda_drill_5_oxzhxu.jpg")
product_4.photos.attach(io: file, filename: "Bermuda drill 5.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133944/Caballero/Bermuda%20Hombre/Bermuda%20Drill%20-%204029/Bermuda_drill_6_mfpvzi.jpg")
product_4.photos.attach(io: file, filename: "Bermuda drill 6.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133945/Caballero/Bermuda%20Hombre/Bermuda%20Drill%20-%204029/Bermuda_drill_7_q1x61a.jpg")
product_4.photos.attach(io: file, filename: "Bermuda drill 7.jpg" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133946/Caballero/Bermuda%20Hombre/Bermuda%20Drill%20-%204029/Bermuda_drill_8_lzzur4.jpg")
product_4.photos.attach(io: file, filename: "Bermuda drill 8.jpg" , content_type: "image/jpg")

puts "producto 5"
product_5 = Product.create(
  name: "Bermuda Jean gris  - 4019",
  description: "Bermuda de tela jean color gris",
  price: 30000,
  ref: 4019,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: short_jean_men.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_5.id, color_id: light_grey.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_5.id, size_id: size_28.id)
ProductSize.create(product_id: product_5.id, size_id: size_30.id)
ProductSize.create(product_id: product_5.id, size_id: size_32.id)
ProductSize.create(product_id: product_5.id, size_id: size_34.id)
ProductSize.create(product_id: product_5.id, size_id: size_38.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda gris - 4019/Bermuda gris - 4019.jpeg")
# product_5.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda gris - 4019.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133946/Caballero/Bermuda%20Hombre/Bermuda%20gris%20-%204019/Bermuda_gris_-_4019_v4pwtk.jpg")
product_5.photos.attach(io: file, filename: "Bermuda gris - 4019.jpg" , content_type: "image/jpg")

puts "producto 6"
product_6 = Product.create(
  name: "Bermuda Jean gris  - 4020",
  description: "Bermuda de tela jean color gris",
  price: 30000,
  ref: 4020,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: short_jean_men.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_6.id, color_id: dark_grey.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_6.id, size_id: size_28.id)
ProductSize.create(product_id: product_6.id, size_id: size_30.id)
ProductSize.create(product_id: product_6.id, size_id: size_32.id)
ProductSize.create(product_id: product_6.id, size_id: size_34.id)
ProductSize.create(product_id: product_6.id, size_id: size_38.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda gris - 4020/Bermuda gris - 4020.jpeg")
# product_6.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda gris - 4020.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133947/Caballero/Bermuda%20Hombre/Bermuda%20gris%20-%204020/Bermuda_gris_-_4020_mkjb7s.jpg")
product_6.photos.attach(io: file, filename: "Bermuda gris - 4020.jpg" , content_type: "image/jpg")

puts "producto 7"
product_7 = Product.create(
  name: "Blue Jean Confort  - 4021",
  description: "Blue Jean Confort para Caballero",
  price: 30000,
  ref: 4021,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: short_jean_men.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_7.id, color_id: light_grey.id)
ProductColor.create(product_id: product_7.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_7.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_7.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_7.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_7.id, size_id: size_28.id)
ProductSize.create(product_id: product_7.id, size_id: size_30.id)
ProductSize.create(product_id: product_7.id, size_id: size_32.id)
ProductSize.create(product_id: product_7.id, size_id: size_34.id)
ProductSize.create(product_id: product_7.id, size_id: size_36.id)
ProductSize.create(product_id: product_7.id, size_id: size_38.id)

# product_7.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4021-2", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4021/Jean confort 4021-3.jpeg")
# product_7.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4021-3", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4021/Jean confort 4021-1.jpeg")
# product_7.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4021-1", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4021/Jean confort 4021-2.jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133948/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204021/Jean_confort_4021-1_rwqtlt.jpg")
product_7.photos.attach(io: file, filename: "Jean confort 4021-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133948/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204021/Jean_confort_4021-2_lkjgws.jpg")
product_7.photos.attach(io: file, filename: "Jean confort 4021-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133949/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204021/Jean_confort_4021-3_udq1o7.jpg")
product_7.photos.attach(io: file, filename: "Jean confort 4021-3" , content_type: "image/jpg")

puts "producto 8"
product_8 = Product.create(
  name: "Blue Jean Confort  - 4022",
  description: "Blue Jean Confort para Caballero",
  price: 30000,
  ref: 4022,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: jean_men.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_8.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_8.id, color_id: dark_grey.id)
ProductColor.create(product_id: product_8.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_8.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_8.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_8.id, size_id: size_28.id)
ProductSize.create(product_id: product_8.id, size_id: size_30.id)
ProductSize.create(product_id: product_8.id, size_id: size_32.id)
ProductSize.create(product_id: product_8.id, size_id: size_34.id)
ProductSize.create(product_id: product_8.id, size_id: size_36.id)
ProductSize.create(product_id: product_8.id, size_id: size_38.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4022/Jean confort 4022-3.jpeg")
# product_8.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4022-3", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4022/Jean confort 4022-1.jpeg")
# product_8.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4022-1", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4022/Jean confort 4022-2.jpeg")
# product_8.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4022-2", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133949/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204022/Jean_confort_4022-1_njfoaj.jpg")
product_8.photos.attach(io: file, filename: "Jean confort 4022-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133951/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204022/Jean_confort_4022-2_dwvnde.jpg")
product_8.photos.attach(io: file, filename: "Jean confort 4022-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133951/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204022/Jean_confort_4022-3_oyxefx.jpg")
product_8.photos.attach(io: file, filename: "Jean confort 4022-3" , content_type: "image/jpg")

puts "producto 9"
product_9 = Product.create(
  name: "Blue Jean Confort  - 4023",
  description: "Blue Jean Confort para Caballero",
  price: 30000,
  ref: 4023,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: jean_men.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_9.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_9.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_9.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_9.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_9.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_9.id, size_id: size_28.id)
ProductSize.create(product_id: product_9.id, size_id: size_30.id)
ProductSize.create(product_id: product_9.id, size_id: size_32.id)
ProductSize.create(product_id: product_9.id, size_id: size_34.id)
ProductSize.create(product_id: product_9.id, size_id: size_36.id)
ProductSize.create(product_id: product_9.id, size_id: size_38.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4023/Jean confort 4023-3.jpeg")
# product_9.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4023-3", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4023/Jean confort 4023-1.jpeg")
# product_9.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4023-1", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4023/Jean confort 4023-2.jpeg")
# product_9.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4023-2", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133952/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204023/Jean_confort_4023-1_qcsdvp.jpg")
product_9.photos.attach(io: file, filename: "Jean confort 4023-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133952/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204023/Jean_confort_4023-2_mk2dqc.jpg")
product_9.photos.attach(io: file, filename: "Jean confort 4023-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133953/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204023/Jean_confort_4023-3_gofk7l.jpg")
product_9.photos.attach(io: file, filename: "Jean confort 4023-3" , content_type: "image/jpg")

puts "producto 10"
product_10 = Product.create(
  name: "Blue Jean Confort  - 4024",
  description: "Blue Jean Confort para Caballero",
  price: 30000,
  ref: 4024,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: jean_men.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_10.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_10.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_10.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_10.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_10.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_10.id, size_id: size_28.id)
ProductSize.create(product_id: product_10.id, size_id: size_30.id)
ProductSize.create(product_id: product_10.id, size_id: size_32.id)
ProductSize.create(product_id: product_10.id, size_id: size_34.id)
ProductSize.create(product_id: product_10.id, size_id: size_36.id)
ProductSize.create(product_id: product_10.id, size_id: size_38.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4024/Jean confort 4024-3.jpeg")
# product_10.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4024-3", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4024/Jean confort 4024-1.jpeg")
# product_10.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4024-1", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4024/Jean confort 4024-2.jpeg")
# product_10.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4024-2", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133953/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204024/Jean_confort_4024-1_qjtrdq.jpg")
product_10.photos.attach(io: file, filename: "Jean confort 4024-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133954/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204024/Jean_confort_4024-2_dgkh7h.jpg")
product_10.photos.attach(io: file, filename: "Jean confort 4024-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133955/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204024/Jean_confort_4024-3_hdjwhf.jpg")
product_10.photos.attach(io: file, filename: "Jean confort 4024-3" , content_type: "image/jpg")

puts "producto 11"
product_11 = Product.create(
  name: "Blue Jean Confort  - 4025",
  description: "Blue Jean Confort para Caballero",
  price: 30000,
  ref: 4025,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: jean_men.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_11.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_11.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_11.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_11.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_11.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_11.id, size_id: size_28.id)
ProductSize.create(product_id: product_11.id, size_id: size_30.id)
ProductSize.create(product_id: product_11.id, size_id: size_32.id)
ProductSize.create(product_id: product_11.id, size_id: size_34.id)
ProductSize.create(product_id: product_11.id, size_id: size_36.id)
ProductSize.create(product_id: product_11.id, size_id: size_38.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4025/Jean confort 4025-3.jpeg")
# product_11.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4025-3", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4025/Jean confort 4025-1.jpeg")
# product_11.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4025-1", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4025/Jean confort 4025-2.jpeg")
# product_11.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4025-2", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133955/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204025/Jean_confort_4025-1_nge618.jpg")
product_11.photos.attach(io: file, filename: "Jean confort 4025-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133956/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204025/Jean_confort_4025-2_uiphd9.jpg")
product_11.photos.attach(io: file, filename: "Jean confort 4025-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133956/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204025/Jean_confort_4025-3_aciqlb.jpg")
product_11.photos.attach(io: file, filename: "Jean confort 4025-3" , content_type: "image/jpg")

puts "producto 12"
product_12 = Product.create(
  name: "Blue Jean Confort  - 4026",
  description: "Blue Jean Confort para Caballero",
  price: 30000,
  ref: 4026,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: jean_men.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_12.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_12.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_12.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_12.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_12.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_12.id, size_id: size_28.id)
ProductSize.create(product_id: product_12.id, size_id: size_30.id)
ProductSize.create(product_id: product_12.id, size_id: size_32.id)
ProductSize.create(product_id: product_12.id, size_id: size_34.id)
ProductSize.create(product_id: product_12.id, size_id: size_36.id)
ProductSize.create(product_id: product_12.id, size_id: size_38.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4026/Jean confort 4026-3.jpeg")
# product_12.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4026-3", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4026/Jean confort 4026-1.jpeg")
# product_12.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4026-1", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Blue Jean Confort/Jean confort - 4026/Jean confort 4026-2.jpeg")
# product_12.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4026-2", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133957/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204026/Jean_confort_4026-1_oceoeq.jpg")
product_12.photos.attach(io: file, filename: "Jean confort 4026-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133958/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204026/Jean_confort_4026-2_hl3vef.jpg")
product_12.photos.attach(io: file, filename: "Jean confort 4026-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133958/Caballero/Blue%20Jean%20Confort/Jean%20confort%20-%204026/Jean_confort_4026-3_nvtj5z.jpg")
product_12.photos.attach(io: file, filename: "Jean confort 4026-3" , content_type: "image/jpg")

puts "producto 13"
product_13 = Product.create(
  name: "Jean Confort Gris Oscuro - 4027",
  description: "Jean Confort gris oscuro para Caballero",
  price: 30000,
  ref: 4027,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: jean_men.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_13.id, color_id: light_grey.id)
ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_13.id, size_id: size_28.id)
ProductSize.create(product_id: product_13.id, size_id: size_30.id)
ProductSize.create(product_id: product_13.id, size_id: size_32.id)
ProductSize.create(product_id: product_13.id, size_id: size_34.id)
ProductSize.create(product_id: product_13.id, size_id: size_36.id)
ProductSize.create(product_id: product_13.id, size_id: size_38.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Jean Confort Negro/Jean confort negro - 4027/Jean confort negro 4027-3.jpeg")
# product_13.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4027-3", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Jean Confort Negro/Jean confort negro - 4027/Jean confort negro 4027-1.jpeg")
# product_13.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4027-1", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Jean Confort Negro/Jean confort negro - 4027/Jean confort negro 4027-2.jpeg")
# product_13.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4027-2", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133959/Caballero/Jean%20Confort%20Negro/Jean%20confort%20negro%20-%204027/Jean_confort_negro_4027-1_w8vqff.jpg")
product_13.photos.attach(io: file, filename: "Jean confort 4027-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133959/Caballero/Jean%20Confort%20Negro/Jean%20confort%20negro%20-%204027/Jean_confort_negro_4027-2_x2ehiv.jpg")
product_13.photos.attach(io: file, filename: "Jean confort 4027-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133960/Caballero/Jean%20Confort%20Negro/Jean%20confort%20negro%20-%204027/Jean_confort_negro_4027-3_y4brrv.jpg")
product_13.photos.attach(io: file, filename: "Jean confort 4027-3" , content_type: "image/jpg")

puts "producto 14"
product_14 = Product.create(
  name: "Jean Confort Gris Negro - 4028",
  description: "Jean Confort negro para Caballero",
  price: 30000,
  ref: 4028,
  availability: "Disponible",
  gender_id: gentleman.id,
  category_id: jean_men.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_14.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_14.id, size_id: size_28.id)
ProductSize.create(product_id: product_14.id, size_id: size_30.id)
ProductSize.create(product_id: product_14.id, size_id: size_32.id)
ProductSize.create(product_id: product_14.id, size_id: size_34.id)
ProductSize.create(product_id: product_14.id, size_id: size_36.id)
ProductSize.create(product_id: product_14.id, size_id: size_38.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Jean Confort Negro/Jean confort negro - 4028/Jean confort negro 4028-3.jpeg")
# product_14.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4028-3", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Jean Confort Negro/Jean confort negro - 4028/Jean confort negro 4028-1.jpeg")
# product_14.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4028-1", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Jean Confort Negro/Jean confort negro - 4028/Jean confort negro 4028-2.jpeg")
# product_14.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean confort 4028-2", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133960/Caballero/Jean%20Confort%20Negro/Jean%20confort%20negro%20-%204028/Jean_confort_negro_4028-1_ddhlx7.jpg")
product_14.photos.attach(io: file, filename: "Jean confort 4028-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133961/Caballero/Jean%20Confort%20Negro/Jean%20confort%20negro%20-%204028/Jean_confort_negro_4028-2_ank8si.jpg")
product_14.photos.attach(io: file, filename: "Jean confort 4028-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133962/Caballero/Jean%20Confort%20Negro/Jean%20confort%20negro%20-%204028/Jean_confort_negro_4028-3_d2esec.jpg")
product_14.photos.attach(io: file, filename: "Jean confort 4028-3" , content_type: "image/jpg")

puts "Productos de Caballero Finalizados"

puts "Productos para Dama"

puts "producto 15"
product_15 = Product.create(
  name: "Torero Blanco",
  description: "Torero en drill Blanco para dama",
  price: 30000,
  ref: 1802,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: torero_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_15.id, color_id: white.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_15.id, size_id: size_8.id)
ProductSize.create(product_id: product_15.id, size_id: size_10.id)
ProductSize.create(product_id: product_15.id, size_id: size_12.id)
ProductSize.create(product_id: product_15.id, size_id: size_14.id)
ProductSize.create(product_id: product_15.id, size_id: size_16.id)
ProductSize.create(product_id: product_15.id, size_id: size_18.id)
ProductSize.create(product_id: product_15.id, size_id: size_20.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694490439/Dama/Nuevas/BLANCO/blanco1_copia_eijxa2.jpg")
product_15.photos.attach(io: file, filename: "blanco 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694490449/Dama/Nuevas/BLANCO/blanco3_copia_ddp82d.jpg")
product_15.photos.attach(io: file, filename: "blanco 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694490441/Dama/Nuevas/BLANCO/blanco2_copia_lfg9g1.jpg")
product_15.photos.attach(io: file, filename: "blanco 3" , content_type: "image/jpg")

puts "producto 16"
product_16 = Product.create(
  name: "Chaleco Jean azul - 3344",
  description: "Chaleco de jean azul para dama",
  price: 30000,
  ref: 3344,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: chaleco_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_16.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_16.id, size_id: size_S.id)
ProductSize.create(product_id: product_16.id, size_id: size_M.id)
ProductSize.create(product_id: product_16.id, size_id: size_XL.id)
ProductSize.create(product_id: product_16.id, size_id: size_XXL.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694490908/Dama/Nuevas/CHALECO%20-%203344/3344_zugkqu.jpg")
product_16.photos.attach(io: file, filename: "chaleco 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694490910/Dama/Nuevas/CHALECO%20-%203344/Rf_3344_chaleco2_copia_tg0wtt.jpg")
product_16.photos.attach(io: file, filename: "chaleco 2" , content_type: "image/jpg")

puts "producto 17"
product_17 = Product.create(
  name: "Chaleco Jean azul - 3345",
  description: "Chaleco de jean azul para dama",
  price: 30000,
  ref: 3345,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: chaleco_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_17.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_17.id, size_id: size_S.id)
ProductSize.create(product_id: product_17.id, size_id: size_M.id)
ProductSize.create(product_id: product_17.id, size_id: size_XL.id)
ProductSize.create(product_id: product_17.id, size_id: size_XXL.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694491457/Dama/Nuevas/CHALECO%20-%203345%20-%201/3345-1_-3chaleco1_copia_eatbr9.jpg")
product_17.photos.attach(io: file, filename: "chaleco 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694491561/Dama/Nuevas/CHALECO%20-%203345%20-%201/3345-1_-3chaleco2_copia_1_kqu0hj.jpg")
product_17.photos.attach(io: file, filename: "chaleco 2" , content_type: "image/jpg")

puts "producto 18"
product_18 = Product.create(
  name: "Chaleco Jean azul oscuro - 3345",
  description: "Chaleco de jean azul oscuro para dama",
  price: 30000,
  ref: 3345,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: chaleco_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_18.id, color_id: dark_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_18.id, size_id: size_S.id)
ProductSize.create(product_id: product_18.id, size_id: size_M.id)
ProductSize.create(product_id: product_18.id, size_id: size_XL.id)
ProductSize.create(product_id: product_18.id, size_id: size_XXL.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694661018/Dama/Nuevas/CHALECO%203345/Rf_3345_-2chaleco1_copia_1_iwqbze.jpg")
product_18.photos.attach(io: file, filename: "chaleco 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694661028/Dama/Nuevas/CHALECO%203345/Rf_3345_-2chaleco2_copia_1_v2hvsw.jpg")
product_18.photos.attach(io: file, filename: "chaleco 2" , content_type: "image/jpg")

puts "producto 19"
product_19 = Product.create(
  name: "Torero Morado",
  description: "Torero en drill Morado para dama",
  price: 30000,
  ref: 1802,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: torero_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_19.id, color_id: purple.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_19.id, size_id: size_8.id)
ProductSize.create(product_id: product_19.id, size_id: size_10.id)
ProductSize.create(product_id: product_19.id, size_id: size_12.id)
ProductSize.create(product_id: product_19.id, size_id: size_14.id)
ProductSize.create(product_id: product_19.id, size_id: size_16.id)
ProductSize.create(product_id: product_19.id, size_id: size_18.id)
ProductSize.create(product_id: product_19.id, size_id: size_20.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694661315/Dama/Nuevas/LILA/Morado1_copia_th8lsa.jpg")
product_19.photos.attach(io: file, filename: "Morado 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694661421/Dama/Nuevas/LILA/morado2_copia_zvpa6j.jpg")
product_19.photos.attach(io: file, filename: "Morado 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694661319/Dama/Nuevas/LILA/morado3_copia_gllskb.jpg")
product_19.photos.attach(io: file, filename: "Morado 3" , content_type: "image/jpg")

puts "producto 20"
product_20 = Product.create(
  name: "Torero Naranja",
  description: "Torero en drill Naranja para dama",
  price: 30000,
  ref: 1802,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: torero_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_20.id, color_id: orange.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_20.id, size_id: size_8.id)
ProductSize.create(product_id: product_20.id, size_id: size_10.id)
ProductSize.create(product_id: product_20.id, size_id: size_12.id)
ProductSize.create(product_id: product_20.id, size_id: size_14.id)
ProductSize.create(product_id: product_20.id, size_id: size_16.id)
ProductSize.create(product_id: product_20.id, size_id: size_18.id)
ProductSize.create(product_id: product_20.id, size_id: size_20.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694661736/Dama/Nuevas/NARANJA/naranja1_copia_cklg2w.jpg")
product_20.photos.attach(io: file, filename: "Naranja 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694662344/Dama/Nuevas/NARANJA/naranja2_copia_1_r3haby.jpg")
product_20.photos.attach(io: file, filename: "Naranja 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694662506/Dama/Nuevas/NARANJA/naranja3_copia_z19h2b.jpg")
product_20.photos.attach(io: file, filename: "Naranja 3" , content_type: "image/jpg")

puts "producto 21"
product_21 = Product.create(
  name: "Torero Negro",
  description: "Torero en drill Negro para dama",
  price: 30000,
  ref: 1802,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: torero_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_21.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_21.id, size_id: size_8.id)
ProductSize.create(product_id: product_21.id, size_id: size_10.id)
ProductSize.create(product_id: product_21.id, size_id: size_12.id)
ProductSize.create(product_id: product_21.id, size_id: size_14.id)
ProductSize.create(product_id: product_21.id, size_id: size_16.id)
ProductSize.create(product_id: product_21.id, size_id: size_18.id)
ProductSize.create(product_id: product_21.id, size_id: size_20.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694670765/Dama/Nuevas/REF%20-%203382/shortjean1_copia_nybbll.jpg")
product_21.photos.attach(io: file, filename: "Negro 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694670767/Dama/Nuevas/REF%20-%203382/shortjean3_copia_pjqy0u.jpg")
product_21.photos.attach(io: file, filename: "Negro 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694670661/Dama/Nuevas/REF%20-%203382/shortjean2_copia_s6rcv8.jpg")
product_21.photos.attach(io: file, filename: "Negro 3" , content_type: "image/jpg")

puts "producto 22"
product_22 = Product.create(
  name: "Short de jean - 3381",
  description: "Short de jean azul",
  price: 30000,
  ref: 3381,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_22.id, color_id: dark_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_22.id, size_id: size_8.id)
ProductSize.create(product_id: product_22.id, size_id: size_10.id)
ProductSize.create(product_id: product_22.id, size_id: size_12.id)
ProductSize.create(product_id: product_22.id, size_id: size_14.id)
ProductSize.create(product_id: product_22.id, size_id: size_16.id)
ProductSize.create(product_id: product_22.id, size_id: size_18.id)
ProductSize.create(product_id: product_22.id, size_id: size_20.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694670157/Dama/Nuevas/REF%20-%203381/3381_ref_1_copia_ypqwgm.jpg")
product_22.photos.attach(io: file, filename: "Short 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694670334/Dama/Nuevas/REF%20-%203381/3381_ref_3_copia_1_df8rzb.jpg")
product_22.photos.attach(io: file, filename: "Short 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694670331/Dama/Nuevas/REF%20-%203381/3381_ref_2_copia_1_zxhlas.jpg")
product_22.photos.attach(io: file, filename: "Short 3" , content_type: "image/jpg")

puts "producto 23"
product_23 = Product.create(
  name: "Short de jean - 3382",
  description: "Short de jean azul",
  price: 30000,
  ref: 3382,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_23.id, color_id: dark_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_23.id, size_id: size_8.id)
ProductSize.create(product_id: product_23.id, size_id: size_10.id)
ProductSize.create(product_id: product_23.id, size_id: size_12.id)
ProductSize.create(product_id: product_23.id, size_id: size_14.id)
ProductSize.create(product_id: product_23.id, size_id: size_16.id)
ProductSize.create(product_id: product_23.id, size_id: size_18.id)
ProductSize.create(product_id: product_23.id, size_id: size_20.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694670765/Dama/Nuevas/REF%20-%203382/shortjean1_copia_nybbll.jpg")
product_23.photos.attach(io: file, filename: "Short 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694670767/Dama/Nuevas/REF%20-%203382/shortjean3_copia_pjqy0u.jpg")
product_23.photos.attach(io: file, filename: "Short 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694670661/Dama/Nuevas/REF%20-%203382/shortjean2_copia_s6rcv8.jpg")
product_23.photos.attach(io: file, filename: "Short 3" , content_type: "image/jpg")

puts "producto 24"
product_24 = Product.create(
  name: "Short de jean - 3384",
  description: "Short de jean azul",
  price: 30000,
  ref: 3384,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_24.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_24.id, size_id: size_8.id)
ProductSize.create(product_id: product_24.id, size_id: size_10.id)
ProductSize.create(product_id: product_24.id, size_id: size_12.id)
ProductSize.create(product_id: product_24.id, size_id: size_14.id)
ProductSize.create(product_id: product_24.id, size_id: size_16.id)
ProductSize.create(product_id: product_24.id, size_id: size_18.id)
ProductSize.create(product_id: product_24.id, size_id: size_20.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694671306/Dama/Nuevas/REF%20-%203384/2SHORTJEAN1_copia_xz47ce.jpg")
product_24.photos.attach(io: file, filename: "Short 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694671437/Dama/Nuevas/REF%20-%203384/2SHORTJEAN3_copia_ygy3oc.jpg")
product_24.photos.attach(io: file, filename: "Short 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694671437/Dama/Nuevas/REF%20-%203384/2SHORTJEAN2_copia_knflmv.jpg")
product_24.photos.attach(io: file, filename: "Short 3" , content_type: "image/jpg")

puts "producto 25"
product_25 = Product.create(
  name: "Short de jean - 3386",
  description: "Short de jean azul",
  price: 30000,
  ref: 3386,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_25.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_25.id, size_id: size_8.id)
ProductSize.create(product_id: product_25.id, size_id: size_10.id)
ProductSize.create(product_id: product_25.id, size_id: size_12.id)
ProductSize.create(product_id: product_25.id, size_id: size_14.id)
ProductSize.create(product_id: product_25.id, size_id: size_16.id)
ProductSize.create(product_id: product_25.id, size_id: size_18.id)
ProductSize.create(product_id: product_25.id, size_id: size_20.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694671651/Dama/Nuevas/REF%20-%203386/JEANSS1_copia_o61mr0.jpg")
product_25.photos.attach(io: file, filename: "Short 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694671909/Dama/Nuevas/REF%20-%203386/shorrrt_amqtdf.jpg")
product_25.photos.attach(io: file, filename: "Short 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694671908/Dama/Nuevas/REF%20-%203386/short_nujicv.jpg")
product_25.photos.attach(io: file, filename: "Short 3" , content_type: "image/jpg")

puts "producto 26"
product_26 = Product.create(
  name: "Short de jean - 3387",
  description: "Short de jean Negro",
  price: 30000,
  ref: 3387,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_26.id, size_id: size_8.id)
ProductSize.create(product_id: product_26.id, size_id: size_10.id)
ProductSize.create(product_id: product_26.id, size_id: size_12.id)
ProductSize.create(product_id: product_26.id, size_id: size_14.id)
ProductSize.create(product_id: product_26.id, size_id: size_16.id)
ProductSize.create(product_id: product_26.id, size_id: size_18.id)
ProductSize.create(product_id: product_26.id, size_id: size_20.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694672074/Dama/Nuevas/REF-%203387/3387_1_copia_a8vd0z.jpg")
product_26.photos.attach(io: file, filename: "Short 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694672080/Dama/Nuevas/REF-%203387/3387_3_copia_dkgyvo.jpg")
product_26.photos.attach(io: file, filename: "Short 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694672080/Dama/Nuevas/REF-%203387/3387_2_copia_dpmhvi.jpg")
product_26.photos.attach(io: file, filename: "Short 3" , content_type: "image/jpg")

puts "producto 27"
product_27 = Product.create(
  name: "Short de jean - 3388",
  description: "Short de jean Negro",
  price: 30000,
  ref: 3388,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_27.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_27.id, size_id: size_8.id)
ProductSize.create(product_id: product_27.id, size_id: size_10.id)
ProductSize.create(product_id: product_27.id, size_id: size_12.id)
ProductSize.create(product_id: product_27.id, size_id: size_14.id)
ProductSize.create(product_id: product_27.id, size_id: size_16.id)
ProductSize.create(product_id: product_27.id, size_id: size_18.id)
ProductSize.create(product_id: product_27.id, size_id: size_20.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694672252/Dama/Nuevas/REF-%203388/shortnegro1_copia_mofpy2.jpg")
product_27.photos.attach(io: file, filename: "Short 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694672321/Dama/Nuevas/REF-%203388/shortnegro3_copia_obgdpo.jpg")
product_27.photos.attach(io: file, filename: "Short 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694672258/Dama/Nuevas/REF-%203388/shortnegro2_copia_arfrig.jpg")
product_27.photos.attach(io: file, filename: "Short 3" , content_type: "image/jpg")

puts "producto 28"
product_28 = Product.create(
  name: "Torero Rosa",
  description: "Torero en drill Rosado para dama",
  price: 30000,
  ref: 1802,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: torero_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_28.id, color_id: pink.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_28.id, size_id: size_8.id)
ProductSize.create(product_id: product_28.id, size_id: size_10.id)
ProductSize.create(product_id: product_28.id, size_id: size_12.id)
ProductSize.create(product_id: product_28.id, size_id: size_14.id)
ProductSize.create(product_id: product_28.id, size_id: size_16.id)
ProductSize.create(product_id: product_28.id, size_id: size_18.id)
ProductSize.create(product_id: product_28.id, size_id: size_20.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694672573/Dama/Nuevas/ROSA/rosa1_copia_pituoe.jpg")
product_28.photos.attach(io: file, filename: "Negro 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694672577/Dama/Nuevas/ROSA/Rosa3_copia_tozk8p.jpg")
product_28.photos.attach(io: file, filename: "Negro 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694672582/Dama/Nuevas/ROSA/Rosa2_copia_m6nxto.jpg")
product_28.photos.attach(io: file, filename: "Negro 3" , content_type: "image/jpg")

puts "producto 29"
product_29 = Product.create(
  name: "Torero Amarillo",
  description: "Torero en drill Amarillo para dama",
  price: 30000,
  ref: 1802,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: torero_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_29.id, color_id: yellow.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_29.id, size_id: size_8.id)
ProductSize.create(product_id: product_29.id, size_id: size_10.id)
ProductSize.create(product_id: product_29.id, size_id: size_12.id)
ProductSize.create(product_id: product_29.id, size_id: size_14.id)
ProductSize.create(product_id: product_29.id, size_id: size_16.id)
ProductSize.create(product_id: product_29.id, size_id: size_18.id)
ProductSize.create(product_id: product_29.id, size_id: size_20.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694673607/Dama/Nuevas/VERDE/verde1_copia_jy27pk.jpg")
product_29.photos.attach(io: file, filename: "Negro 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694673610/Dama/Nuevas/VERDE/verde3_copia_ksqwfm.jpg")
product_29.photos.attach(io: file, filename: "Negro 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694673710/Dama/Nuevas/VERDE/verde2_copia_tt4rrq.jpg")
product_29.photos.attach(io: file, filename: "Negro 3" , content_type: "image/jpg")



puts "Productos creados exitosamente"

puts "Cargando imagenes del banner"
file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694141566/Banner_Tendencias/image_1_frqkef.jpg")
user.photos.attach(io: file, filename: "image_1.jpeg" , content_type: "image/jpg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/image_1.jpeg")
# user.photos.attach(io: URI.open(uploaded_image['url']), filename: "image_1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694141562/Banner_Tendencias/logo_grande_utyhmk.png")
user.photos.attach(io: file, filename: "logo grande" , content_type: "image/jpg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/logo grande.png")
# user.photos.attach(io: URI.open(uploaded_image['url']), filename: "logo grande.png", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694141563/Banner_Tendencias/image_3_nsaxnu.jpg")
user.photos.attach(io: file, filename: "image_" , content_type: "image/jpg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/image_3.jpeg")
# user.photos.attach(io: URI.open(uploaded_image['url']), filename: "image_1.jpeg", content_type: "image/jpeg")

puts "Imagenes del banner cargadas"
