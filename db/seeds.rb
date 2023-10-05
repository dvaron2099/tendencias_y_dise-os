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
short_drill_men = Category.create(category_type: "Bermuda de drill caballero", gender_id: gentleman.id)
puts "Bermuda de jean caballero"
short_jean_men = Category.create(category_type: "Bermuda de jean caballero", gender_id: gentleman.id)
puts "Jeans para caballero"
jean_men = Category.create(category_type: "Jeans caballero", gender_id: gentleman.id)

#######################################################################################################

puts "Torero en drill dama"
torero_lady = Category.create(category_type: "Torero en drill dama", gender_id: lady.id)
puts "Pantalon en drill dama"
pantalon_drill_lady = Category.create(category_type: "Pantalon en drill dama", gender_id: lady.id)
puts "Pantalon Cargo dama"
cargo_lady = Category.create(category_type: "Pantalon Cargo de drill dama", gender_id: lady.id)
puts "Jean Cargo dama"
jean_cargo_lady = Category.create(category_type: "Jean Cargo dama", gender_id: lady.id)
puts "Jeans de dama"
jean_lady = Category.create(category_type: "Jeans dama", gender_id: lady.id)
puts "Short de jean"
short_jean_lady = Category.create(category_type: "Short de jean dama", gender_id: lady.id)
puts "Chaleco de jean"
chaleco_jean_lady = Category.create(category_type: "Chaleco de jean dama", gender_id: lady.id)
puts "Falda short de jean"
skirt_jean_lady = Category.create(category_type: "Falda short de jean dama", gender_id: lady.id)


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
puts "Azul cielo"
sky_blue = Color.create(
  name: "Azul cielo",
  hex_code: "#849fba"
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
  hex_code: "#cab7a9"
)

puts "Naranja"
orange = Color.create(
  name: "Naranja",
  hex_code: "#f17778"
)

puts "Marron Rojizo"
reddish_brown = Color.create(
  name: "Marron Rojizo",
  hex_code: "#ae6943"
)
puts "Beige Claro"
light_beige = Color.create(
  name: "Beige Claro",
  hex_code: "#e6d4be"
)

puts "Gris Pardo"
taupe_grey = Color.create(
  name: "Gris Pardo",
  hex_code: "#85766f"
)
puts "Marron"
brown = Color.create(
  name: "Marron",
  hex_code: "#88776f"
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
  price: 50000,
  quantity: 4,
  wholesale_price: 42000,
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
  price: 50000,
  quantity: 4,
  wholesale_price: 42000,
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
  price: 50000,
  quantity: 4,
  wholesale_price: 42000,
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
ProductSize.create(product_id: product_3.id, size_id: size_38.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Caballero/Bermuda Hombre/Bermuda Blue Jean - 4014/Bermuda Blue Jean - 4014.jpeg")
# product_3.photos.attach(io: URI.open(uploaded_image['url']), filename: "Bermuda_Blue_Jean_4014.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133941/Caballero/Bermuda%20Hombre/Bermuda%20Blue%20Jean%20-%204014/Bermuda_Blue_Jean_-_4014_zcbvve.jpg")
product_3.photos.attach(io: file, filename: "Bermuda_Blue_Jean_4014.jpg" , content_type: "image/jpg")

puts "producto 4"
product_4 = Product.create(
  name: "Bermuda Drill - 4029",
  description: "Bermuda de tela drill, varios colores disponibles",
  price: 52000,
  quantity: 4,
  wholesale_price: 52000,
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
  price: 50000,
  quantity: 4,
  wholesale_price: 42000,
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
  price: 50000,
  quantity: 4,
  wholesale_price: 42000,
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
  price: 70000,
  quantity: 4,
  wholesale_price: 60000,
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
  price: 70000,
  quantity: 4,
  wholesale_price: 60000,
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
  price: 70000,
  quantity: 4,
  wholesale_price: 60000,
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
  price: 70000,
  quantity: 4,
  wholesale_price: 60000,
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
  price: 70000,
  quantity: 4,
  wholesale_price: 60000,
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
  price: 70000,
  quantity: 4,
  wholesale_price: 60000,
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
  price: 70000,
  quantity: 4,
  wholesale_price: 60000,
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
  price: 70000,
  quantity: 4,
  wholesale_price: 60000,
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
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585067/Dama/nuevas/BLANCO/1_zo4r4t.png")
product_15.photos.attach(io: file, filename: "blanco 1" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585564/Dama/nuevas/BLANCO/2_fm6p98.png")
product_15.photos.attach(io: file, filename: "blanco 2" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585481/Dama/nuevas/BLANCO/3_mpa0at.png")
product_15.photos.attach(io: file, filename: "blanco 3" , content_type: "image/png")

puts "producto 16"
product_16 = Product.create(
  name: "Chaleco Jean azul - 3344",
  description: "Chaleco de jean azul para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 42000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585068/Dama/nuevas/CHALECO%20-%203344/1_mttqlg.png")
product_16.photos.attach(io: file, filename: "chaleco 1" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585069/Dama/nuevas/CHALECO%20-%203344/2_wlmaxu.png")
product_16.photos.attach(io: file, filename: "chaleco 2" , content_type: "image/png")

puts "producto 17"
product_17 = Product.create(
  name: "Chaleco Jean azul - 3345",
  description: "Chaleco de jean azul para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 42000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585071/Dama/nuevas/CHALECO%20-%203345%20-%201/1_shgo5v.png")
product_17.photos.attach(io: file, filename: "chaleco 1" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585073/Dama/nuevas/CHALECO%20-%203345%20-%201/2_t9besg.png")
product_17.photos.attach(io: file, filename: "chaleco 2" , content_type: "image/png")

puts "producto 18"
product_18 = Product.create(
  name: "Chaleco Jean azul oscuro - 3345",
  description: "Chaleco de jean azul oscuro para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 42000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585067/Dama/nuevas/CHALECO%203345/1_uqwvpo.png")
product_18.photos.attach(io: file, filename: "chaleco 1" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585066/Dama/nuevas/CHALECO%203345/2_iru7eq.png")
product_18.photos.attach(io: file, filename: "chaleco 2" , content_type: "image/png")

puts "producto 19"
product_19 = Product.create(
  name: "Torero Morado",
  description: "Torero en drill Morado para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585070/Dama/nuevas/LILA/1_eicxvq.png")
product_19.photos.attach(io: file, filename: "Morado 1" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585066/Dama/nuevas/LILA/2_yztzus.png")
product_19.photos.attach(io: file, filename: "Morado 2" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585071/Dama/nuevas/LILA/3_yhvhbn.png")
product_19.photos.attach(io: file, filename: "Morado 3" , content_type: "image/png")

puts "producto 20"
product_20 = Product.create(
  name: "Torero Naranja",
  description: "Torero en drill Naranja para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585056/Dama/nuevas/NARANJA/1_ybpkgp.png")
product_20.photos.attach(io: file, filename: "Naranja 1" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585056/Dama/nuevas/NARANJA/2_hi8som.png")
product_20.photos.attach(io: file, filename: "Naranja 2" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585057/Dama/nuevas/NARANJA/3_iuibuk.png")
product_20.photos.attach(io: file, filename: "Naranja 3" , content_type: "image/png")

puts "producto 21"
product_21 = Product.create(
  name: "Torero Negro",
  description: "Torero en drill Negro para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585057/Dama/nuevas/NEGRO/1_zkkovz.png")
product_21.photos.attach(io: file, filename: "Negro 1" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585066/Dama/nuevas/NEGRO/2_zivrss.png")
product_21.photos.attach(io: file, filename: "Negro 2" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585060/Dama/nuevas/NEGRO/3_uvrgpi.png")
product_21.photos.attach(io: file, filename: "Negro 3" , content_type: "image/png")

puts "producto 22"
product_22 = Product.create(
  name: "Short de jean - 3381",
  description: "Short de jean azul",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585057/Dama/nuevas/REF%20-%203381/1_lrwegc.png")
product_22.photos.attach(io: file, filename: "Short 1" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585058/Dama/nuevas/REF%20-%203381/2_wduear.png")
product_22.photos.attach(io: file, filename: "Short 2" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585057/Dama/nuevas/REF%20-%203381/3_wzisvt.png")
product_22.photos.attach(io: file, filename: "Short 3" , content_type: "image/png")

puts "producto 23"
product_23 = Product.create(
  name: "Short de jean - 3382",
  description: "Short de jean azul",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585058/Dama/nuevas/REF%20-%203382/1_ftj2lz.png")
product_23.photos.attach(io: file, filename: "Short 1" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585059/Dama/nuevas/REF%20-%203382/2_vaighc.png")
product_23.photos.attach(io: file, filename: "Short 2" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585059/Dama/nuevas/REF%20-%203382/3_jfnccv.png")
product_23.photos.attach(io: file, filename: "Short 3" , content_type: "image/png")

puts "producto 24"
product_24 = Product.create(
  name: "Short de jean - 3384",
  description: "Short de jean azul",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585061/Dama/nuevas/REF%20-%203384/1_r3teal.png")
product_24.photos.attach(io: file, filename: "Short 1" , content_type: "image/png")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585063/Dama/nuevas/REF%20-%203384/2_xbwkwy.jpg")
product_24.photos.attach(io: file, filename: "Short 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585063/Dama/nuevas/REF%20-%203384/3_zc3cen.jpg")
product_24.photos.attach(io: file, filename: "Short 3" , content_type: "image/jpg")

puts "producto 25"
product_25 = Product.create(
  name: "Short de jean - 3386",
  description: "Short de jean azul",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585061/Dama/nuevas/REF%20-%203386/1_fp7tvi.jpg")
product_25.photos.attach(io: file, filename: "Short 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585061/Dama/nuevas/REF%20-%203386/2_kwmjci.jpg")
product_25.photos.attach(io: file, filename: "Short 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585063/Dama/nuevas/REF%20-%203386/3_yq9exs.jpg")
product_25.photos.attach(io: file, filename: "Short 3" , content_type: "image/jpg")

puts "producto 26"
product_26 = Product.create(
  name: "Short de jean - 3387",
  description: "Short de jean Negro",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585062/Dama/nuevas/REF-%203387/1_clah0s.jpg")
product_26.photos.attach(io: file, filename: "Short 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585063/Dama/nuevas/REF-%203387/2_xiu8m3.jpg")
product_26.photos.attach(io: file, filename: "Short 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585063/Dama/nuevas/REF-%203387/3_ty257h.jpg")
product_26.photos.attach(io: file, filename: "Short 3" , content_type: "image/jpg")

puts "producto 27"
product_27 = Product.create(
  name: "Short de jean - 3388",
  description: "Short de jean Negro",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585064/Dama/nuevas/REF-%203388/1_rktx6b.jpg")
product_27.photos.attach(io: file, filename: "Short 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585067/Dama/nuevas/REF-%203388/2_gorm7v.jpg")
product_27.photos.attach(io: file, filename: "Short 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695585064/Dama/nuevas/REF-%203388/3_ylaein.jpg")
product_27.photos.attach(io: file, filename: "Short 3" , content_type: "image/jpg")

puts "producto 28"
product_28 = Product.create(
  name: "Torero Rosa",
  description: "Torero en drill Rosado para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695586705/Dama/nuevas/ROSA/1_sqdxya.jpg")
product_28.photos.attach(io: file, filename: "Negro 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695586706/Dama/nuevas/ROSA/2_cnngzh.jpg")
product_28.photos.attach(io: file, filename: "Negro 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695586708/Dama/nuevas/ROSA/3_n0cy5h.jpg")
product_28.photos.attach(io: file, filename: "Negro 3" , content_type: "image/jpg")

puts "producto 29"
product_29 = Product.create(
  name: "Torero Amarillo",
  description: "Torero en drill Amarillo para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
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

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695586702/Dama/nuevas/VERDE/1_cd5jlq.jpg")
product_29.photos.attach(io: file, filename: "Negro 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695586702/Dama/nuevas/VERDE/2_z4et0i.jpg")
product_29.photos.attach(io: file, filename: "Negro 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695586703/Dama/nuevas/VERDE/3_sf9hfs.jpg")
product_29.photos.attach(io: file, filename: "Negro 3" , content_type: "image/jpg")

puts "producto 30"
product_30 = Product.create(
  name: "Short de Jean Tiro Alto - 3366",
  description: "Short Tiro Alto para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
  ref: 3366,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_30.id, color_id: medium_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_30.id, size_id: size_6.id)
ProductSize.create(product_id: product_30.id, size_id: size_8.id)
ProductSize.create(product_id: product_30.id, size_id: size_10.id)
ProductSize.create(product_id: product_30.id, size_id: size_12.id)
ProductSize.create(product_id: product_30.id, size_id: size_16.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134030/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203366/Short_Tiro_Alto_3366-1_relo2z.jpg")
product_30.photos.attach(io: file, filename: "Short Tiro Alto 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134031/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203366/Short_Tiro_Alto_3366-2_twb2io.jpg")
product_30.photos.attach(io: file, filename: "Short Tiro Alto 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134032/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203366/Short_Tiro_Alto_3366-3_nhqe4t.jpg")
product_30.photos.attach(io: file, filename: "Short Tiro Alto 3" , content_type: "image/jpg")

puts "producto 31"
product_31 = Product.create(
  name: "Short de Jean - 3348",
  description: "Short de Jean para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
  ref: 3348,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_31.id, color_id: medium_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_31.id, size_id: size_6.id)
ProductSize.create(product_id: product_31.id, size_id: size_8.id)
ProductSize.create(product_id: product_31.id, size_id: size_10.id)
ProductSize.create(product_id: product_31.id, size_id: size_12.id)
ProductSize.create(product_id: product_31.id, size_id: size_14.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134011/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203348/Short_Blue_Jean_3348-1_febwau.jpg")
product_31.photos.attach(io: file, filename: "Short de jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134012/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203348/Short_Blue_Jean_3348-2_besuit.jpg")
product_31.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134013/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203348/Short_Blue_Jean_3348-3_wvlzgd.jpg")
product_31.photos.attach(io: file, filename: "Short de jean 3" , content_type: "image/jpg")

puts "producto 32"
product_32 = Product.create(
  name: "Short de Jean - 3368",
  description: "Short de Jean para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
  ref: 3368,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_32.id, color_id: medium_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_32.id, size_id: size_10.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134011/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203348/Short_Blue_Jean_3348-1_febwau.jpg")
product_32.photos.attach(io: file, filename: "Short de jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134012/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203348/Short_Blue_Jean_3348-2_besuit.jpg")
product_32.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134013/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203348/Short_Blue_Jean_3348-3_wvlzgd.jpg")
product_32.photos.attach(io: file, filename: "Short de jean 3" , content_type: "image/jpg")

puts "producto 33"
product_33 = Product.create(
  name: "Short de Jean - 3341",
  description: "Short de Jean para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
  ref: 3341,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_33.id, color_id: light_grey.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_33.id, size_id: size_10.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134023/Dama/Short%20de%20Jean/Short%20gris%20-%203341/Short_gris_3341-1_zux6r1.jpg")
product_33.photos.attach(io: file, filename: "Short de jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134023/Dama/Short%20de%20Jean/Short%20gris%20-%203341/Short_gris_3341-2_hapaho.jpg")
product_33.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134024/Dama/Short%20de%20Jean/Short%20gris%20-%203341/Short_gris_3341-3_yqxgai.jpg")
product_33.photos.attach(io: file, filename: "Short de jean 3" , content_type: "image/jpg")

puts "producto 34"
product_34 = Product.create(
  name: "Short de Jean - 3374",
  description: "Short de Jean para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
  ref: 3374,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_34.id, color_id: white.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_34.id, size_id: size_6.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696290694/Dama/Short%20de%20Jean/Short%20blanco%20-%203374/Short_blanco_3374-1_grbdio.jpg")
product_34.photos.attach(io: file, filename: "Short de jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696290694/Dama/Short%20de%20Jean/Short%20blanco%20-%203374/Short_blanco_3374-2_nfcbeh.jpg")
product_34.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

puts "producto 35"
product_35 = Product.create(
  name: "Short de Jean - 3342",
  description: "Short de Jean para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 38000,
  ref: 3342,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_35.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_35.id, size_id: size_6.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134025/Dama/Short%20de%20Jean/Short%20negro%20-%203342/Short_negro_3342-1_boc4y8.jpg")
product_35.photos.attach(io: file, filename: "Short de jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134025/Dama/Short%20de%20Jean/Short%20negro%20-%203342/Short_negro_3342-2_ce7zkh.jpg")
product_35.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134026/Dama/Short%20de%20Jean/Short%20negro%20-%203342/Short_negro_3342-3_oqmjrj.jpg")
product_35.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

puts "producto 36"
product_36 = Product.create(
  name: "Short de Jean - 3397",
  description: "Short de Jean para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 36000,
  ref: 3397,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_36.id, color_id: medium_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_36.id, size_id: size_10.id)
ProductSize.create(product_id: product_36.id, size_id: size_12.id)
ProductSize.create(product_id: product_36.id, size_id: size_14.id)
ProductSize.create(product_id: product_36.id, size_id: size_16.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133996/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203297/Short_Blue_Jean_3297-1_tvs0kc.jpg")
product_36.photos.attach(io: file, filename: "Short de jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133997/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203297/Short_Blue_Jean_3297-2_h96phs.jpg")
product_36.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133997/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203297/Short_Blue_Jean_3297-3_gayg4m.jpg")
product_36.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

puts "producto 37"
product_37 = Product.create(
  name: "Short de Jean - 3285",
  description: "Short de Jean para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 36000,
  ref: 3285,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_37.id, color_id: dark_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_37.id, size_id: size_10.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133994/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203285/Short_Blue_Jean_3285-1_ubudcw.jpg")
product_37.photos.attach(io: file, filename: "Short de jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133995/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203285/Short_Blue_Jean_3285-2_jmewvp.jpg")
product_37.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133995/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203285/Short_Blue_Jean_3285-3_edijdo.jpg")
product_37.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

puts "producto 38"
product_38 = Product.create(
  name: "Short de Jean - 3338",
  description: "Short de Jean para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 36000,
  ref: 3338,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_38.id, color_id: dark_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_38.id, size_id: size_8.id)
ProductSize.create(product_id: product_38.id, size_id: size_10.id)
ProductSize.create(product_id: product_38.id, size_id: size_12.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134027/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203338/Short_Tiro_Alto_3339-1_p7jdnj.jpg")
product_38.photos.attach(io: file, filename: "Short de jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134027/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203338/Short_Tiro_Alto_3339-2_vumz8b.jpg")
product_38.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134028/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203338/Short_Tiro_Alto_3339-3_dhx0sq.jpg")
product_38.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

puts "producto 39"
product_39 = Product.create(
  name: "Short de Jean - 3325",
  description: "Short de Jean para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 36000,
  ref: 3325,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_39.id, color_id: medium_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_39.id, size_id: size_6.id)
ProductSize.create(product_id: product_39.id, size_id: size_8.id)
ProductSize.create(product_id: product_39.id, size_id: size_10.id)
ProductSize.create(product_id: product_39.id, size_id: size_12.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133998/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203325/Short_Blue_Jean_3325-1_axa7pv.jpg")
product_39.photos.attach(io: file, filename: "Short de jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133999/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203325/Short_Blue_Jean_3325-2_zi7eoe.jpg")
product_39.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

puts "producto 40"
product_40 = Product.create(
  name: "Short de Jean - 3339",
  description: "Short de Jean para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 36000,
  ref: 3339,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_40.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_40.id, size_id: size_8.id)
ProductSize.create(product_id: product_40.id, size_id: size_10.id)
ProductSize.create(product_id: product_40.id, size_id: size_12.id)
ProductSize.create(product_id: product_40.id, size_id: size_14.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134028/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203339/Short_Tiro_Alto_3339-1_do5d3b.jpg")
product_40.photos.attach(io: file, filename: "Short de jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134029/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203339/Short_Tiro_Alto_3339-2_bbdycl.jpg")
product_40.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134030/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203339/Short_Tiro_Alto_3339-3_j4ed2u.jpg")
product_40.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

puts "producto 41"
product_41 = Product.create(
  name: "Short de Jean - 3332",
  description: "Short de Jean para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 36000,
  ref: 3332,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_41.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_41.id, size_id: size_8.id)
ProductSize.create(product_id: product_41.id, size_id: size_10.id)
ProductSize.create(product_id: product_41.id, size_id: size_12.id)
ProductSize.create(product_id: product_41.id, size_id: size_14.id)
ProductSize.create(product_id: product_41.id, size_id: size_16.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133999/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203332/Short_Blue_Jean_3332-1_mcmftn.jpg")
product_41.photos.attach(io: file, filename: "Short de jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134008/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203332/Short_Blue_Jean_3332-2_cqmpeo.jpg")
product_41.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134009/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203332/Short_Blue_Jean_3332-3_l8afu1.jpg")
product_41.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

puts "producto 42"
product_42 = Product.create(
  name: "Short de Jean - 3239",
  description: "Short de Jean para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 36000,
  ref: 3239,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_42.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_42.id, size_id: size_8.id)
ProductSize.create(product_id: product_42.id, size_id: size_12.id)
ProductSize.create(product_id: product_42.id, size_id: size_14.id)
ProductSize.create(product_id: product_42.id, size_id: size_16.id)
ProductSize.create(product_id: product_42.id, size_id: size_18.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133992/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203239/Short_Blue_Jean_3239-1_me7zad.jpg")
product_42.photos.attach(io: file, filename: "Short de jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133993/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203239/Short_Blue_Jean_3239-2_dsinlv.jpg")
product_42.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133994/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203239/Short_Blue_Jean_3239-3_pnxvl9.jpg")
product_42.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")

puts "producto 43"
product_43 = Product.create(
  name: "Short de Jean - 3333",
  description: "Short de Jean para dama",
  price: 50000,
  quantity: 4,
  wholesale_price: 36000,
  ref: 3333,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: short_jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_43.id, color_id: medium_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_43.id, size_id: size_8.id)
ProductSize.create(product_id: product_43.id, size_id: size_12.id)
ProductSize.create(product_id: product_43.id, size_id: size_14.id)
ProductSize.create(product_id: product_43.id, size_id: size_16.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134010/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203333/Short_Blue_Jean_3333-1_dkqvlr.jpg")
product_43.photos.attach(io: file, filename: "Short de jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134011/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203333/Short_Blue_Jean_3333-2_uycbwy.jpg")
product_43.photos.attach(io: file, filename: "Short de jean 2" , content_type: "image/jpg")


puts "producto 44"
product_44 = Product.create(
  name: "Jean Skinny Tiro Alto - 3378",
  description: "Jean Skinny Tiro Alto para dama",
  price: 60000,
  quantity: 4,
  wholesale_price: 52000,
  ref: 3378,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_44.id, color_id: light_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_44.id, size_id: size_8.id)
ProductSize.create(product_id: product_44.id, size_id: size_10.id)
ProductSize.create(product_id: product_44.id, size_id: size_12.id)
ProductSize.create(product_id: product_44.id, size_id: size_14.id)
ProductSize.create(product_id: product_44.id, size_id: size_16.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133971/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203378/Jean_Skinny_Tiro_Alto_3378-1_fwkoix.jpg")
product_44.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133972/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203378/Jean_Skinny_Tiro_Alto_3378-2_w4temt.jpg")
product_44.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133973/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203378/Jean_Skinny_Tiro_Alto_3378-3_ra8hkh.jpg")
product_44.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

puts "producto 45"
product_45 = Product.create(
  name: "Jean Skinny Tiro Alto - 3380",
  description: "Jean Skinny Tiro Alto para dama",
  price: 60000,
  quantity: 4,
  wholesale_price: 52000,
  ref: 3380,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_45.id, color_id: medium_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_45.id, size_id: size_8.id)
ProductSize.create(product_id: product_45.id, size_id: size_10.id)
ProductSize.create(product_id: product_45.id, size_id: size_12.id)
ProductSize.create(product_id: product_45.id, size_id: size_14.id)
ProductSize.create(product_id: product_45.id, size_id: size_16.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133976/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203380/Jean_Skinny_Tiro_Alto_3380-1_ppkipm.jpg")
product_45.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133976/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203380/Jean_Skinny_Tiro_Alto_3380-2_ip9grg.jpg")
product_45.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133977/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203380/Jean_Skinny_Tiro_Alto_3380-3_jbcsnj.jpg")
product_45.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

puts "producto 46"
product_46 = Product.create(
  name: "Jean Skinny Tiro Alto - 3375",
  description: "Jean Skinny Tiro Alto para dama",
  price: 65000,
  quantity: 4,
  wholesale_price: 55000,
  ref: 3375,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_46.id, color_id: dark_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_46.id, size_id: size_6.id)
ProductSize.create(product_id: product_46.id, size_id: size_8.id)
ProductSize.create(product_id: product_46.id, size_id: size_10.id)
ProductSize.create(product_id: product_46.id, size_id: size_14.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133967/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203375/Jean_Skinny_Tiro_Alto_3375-1_onzzk7.jpg")
product_46.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133968/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203375/Jean_Skinny_Tiro_Alto_3375-2_njvwgn.jpg")
product_46.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133968/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203375/Jean_Skinny_Tiro_Alto_3375-3_zl8jxe.jpg")
product_46.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

puts "producto 47"
product_47 = Product.create(
  name: "Jean Strech gris - 3343",
  description: "Jean Strech gris para dama",
  price: 60000,
  quantity: 4,
  wholesale_price: 52000,
  ref: 3343,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_47.id, color_id: light_grey.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_47.id, size_id: size_8.id)
ProductSize.create(product_id: product_47.id, size_id: size_10.id)
ProductSize.create(product_id: product_47.id, size_id: size_12.id)
ProductSize.create(product_id: product_47.id, size_id: size_14.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133985/Dama/Jean%20Strech%20Gris/Jean%20Strech%20Gris%20%20-%203343/Jean_Strech_Gris_3343-1_uij4c9.jpg")
product_47.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133986/Dama/Jean%20Strech%20Gris/Jean%20Strech%20Gris%20%20-%203343/Jean_Strech_Gris_3343-2_hlawfj.jpg")
product_47.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133986/Dama/Jean%20Strech%20Gris/Jean%20Strech%20Gris%20%20-%203343/Jean_Strech_Gris_3343-3_e3prsf.jpg")
product_47.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

puts "producto 48"
product_48 = Product.create(
  name: "Jean Negro - 3247",
  description: "Jean Negro para dama",
  price: 60000,
  quantity: 4,
  wholesale_price: 52000,
  ref: 3247,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_48.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_48.id, size_id: size_8.id)
ProductSize.create(product_id: product_48.id, size_id: size_10.id)
ProductSize.create(product_id: product_48.id, size_id: size_12.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133982/Dama/Jean%20negro/Jean%20negro%20-%203247/Jean_negro_3247-1_gm0hcm.jpg")
product_48.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133982/Dama/Jean%20negro/Jean%20negro%20-%203247/Jean_negro_3247-2_nzpi8x.jpg")
product_48.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133982/Dama/Jean%20negro/Jean%20negro%20-%203247/Jean_negro_3247-2_nzpi8x.jpg")
product_48.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

puts "producto 49"
product_49 = Product.create(
  name: "Blue Jean Cargo Tiro Alto - 3364",
  description: "Blue Jean Cargo Tiro Alto para dama",
  price: 65000,
  quantity: 4,
  wholesale_price: 55000,
  ref: 3364,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: jean_cargo_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_49.id, color_id: dark_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_49.id, size_id: size_8.id)
ProductSize.create(product_id: product_49.id, size_id: size_10.id)
ProductSize.create(product_id: product_49.id, size_id: size_12.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696296044/Dama/Cargo%20Jean/3364/1_esplfs.jpg")
product_49.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696296046/Dama/Cargo%20Jean/3364/3_uqdntz.jpg")
product_49.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696296045/Dama/Cargo%20Jean/3364/2_de1nlp.jpg")
product_49.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

puts "producto 50"
product_50 = Product.create(
  name: "Blue Jean Cargo Tiro Alto - 3365",
  description: "Blue Jean Cargo Tiro Alto para dama",
  price: 65000,
  quantity: 4,
  wholesale_price: 55000,
  ref: 3365,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: jean_cargo_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_50.id, color_id: medium_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_50.id, size_id: size_8.id)
ProductSize.create(product_id: product_50.id, size_id: size_10.id)
ProductSize.create(product_id: product_50.id, size_id: size_12.id)

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696296048/Dama/Cargo%20Jean/3365/1_dns79b.jpg")
product_50.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696296049/Dama/Cargo%20Jean/3365/2_dpzv2e.jpg")
product_50.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696296051/Dama/Cargo%20Jean/3365/3_eniier.jpg")
product_50.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

puts "producto 51"
product_51 = Product.create(
  name: "Jean Gris oscuro - 3352",
  description: "Jean Gris oscuro para dama",
  price: 60000,
  quantity: 4,
  wholesale_price: 52000,
  ref: 3352,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_51.id, color_id: dark_grey.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_51.id, size_id: size_6.id)
ProductSize.create(product_id: product_51.id, size_id: size_8.id)
ProductSize.create(product_id: product_51.id, size_id: size_10.id)


file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133987/Dama/Jean%20Strech%20Gris/Jean%20Strech%20Gris%20%20-%203352%20-%20copia/Jean_Strech_Gris_3352-1_whazid.jpg")
product_51.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133991/Dama/Jean%20Strech%20Gris/Jean%20Strech%20Gris%20%20-%203352%20-%20copia/Jean_Strech_Gris_3352-2_hxilw2.jpg")
product_51.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133987/Dama/Jean%20Strech%20Gris/Jean%20Strech%20Gris%20%20-%203352%20-%20copia/Jean_Strech_Gris_3343-3_mrhlcr.jpg")
product_51.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

puts "producto 52"
product_52 = Product.create(
  name: "Jean Negro - 3340",
  description: "Jean Negro para dama",
  price: 65000,
  quantity: 4,
  wholesale_price: 55000,
  ref: 3340,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_52.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_52.id, size_id: size_6.id)
ProductSize.create(product_id: product_52.id, size_id: size_8.id)
ProductSize.create(product_id: product_52.id, size_id: size_10.id)


file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133983/Dama/Jean%20negro/Jean%20negro%20strech%20-%203340/Jean_Strech_Gris_3343-1_ji4kvu.jpg")
product_52.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133983/Dama/Jean%20negro/Jean%20negro%20strech%20-%203340/Jean_Strech_Gris_3343-2_fmvioc.jpg")
product_52.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133984/Dama/Jean%20negro/Jean%20negro%20strech%20-%203340/Jean_Strech_Gris_3343-3_qz7ya2.jpg")
product_52.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

puts "producto 53"
product_53 = Product.create(
  name: "Jean Negro - 3355",
  description: "Jean Negro para dama",
  price: 65000,
  quantity: 4,
  wholesale_price: 55000,
  ref: 3355,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: jean_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_53.id, color_id: dark_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_53.id, size_id: size_6.id)
ProductSize.create(product_id: product_53.id, size_id: size_8.id)
ProductSize.create(product_id: product_53.id, size_id: size_10.id)
ProductSize.create(product_id: product_53.id, size_id: size_12.id)
ProductSize.create(product_id: product_53.id, size_id: size_14.id)


file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133963/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Blue%20Jean%20-%203355/Blue_Jean_3355-1_sxzot1.jpg")
product_53.photos.attach(io: file, filename: "jean 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133963/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Blue%20Jean%20-%203355/Blue_Jean_3355-2_uoikpe.jpg")
product_53.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133964/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Blue%20Jean%20-%203355/Blue_Jean_3355-3_i6tksh.jpg")
product_53.photos.attach(io: file, filename: "jean 2" , content_type: "image/jpg")

puts "producto 54"
product_54 = Product.create(
  name: "Pantalon de Drill Beige",
  description: "Pantalon de Drill color Beige para Dama",
  price: 60000,
  quantity: 4,
  wholesale_price: 52000,
  ref: 3377,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: pantalon_drill_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_54.id, color_id: beige.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_54.id, size_id: size_6.id)
ProductSize.create(product_id: product_54.id, size_id: size_8.id)
ProductSize.create(product_id: product_54.id, size_id: size_10.id)
ProductSize.create(product_id: product_54.id, size_id: size_12.id)
ProductSize.create(product_id: product_54.id, size_id: size_14.id)


file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306975/Dama/Pantalon%20Drill/3377%20-%20beige/3377-1_zu6ynn.jpg")
product_54.photos.attach(io: file, filename: "drill 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306976/Dama/Pantalon%20Drill/3377%20-%20beige/3377-2_z54uto.jpg")
product_54.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306977/Dama/Pantalon%20Drill/3377%20-%20beige/3377-3_wzuyh2.jpg")
product_54.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

puts "producto 55"
product_55 = Product.create(
  name: "Pantalon de Drill Verde Oliva",
  description: "Pantalon de Drill color Verde Oliva para Dama",
  price: 60000,
  quantity: 4,
  wholesale_price: 52000,
  ref: 3377,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: pantalon_drill_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_55.id, color_id: green.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_55.id, size_id: size_6.id)
ProductSize.create(product_id: product_55.id, size_id: size_8.id)
ProductSize.create(product_id: product_55.id, size_id: size_10.id)
ProductSize.create(product_id: product_55.id, size_id: size_12.id)
ProductSize.create(product_id: product_55.id, size_id: size_14.id)


file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306996/Dama/Pantalon%20Drill/3377-verde%20oliva/3377-1_hyntjk.jpg")
product_55.photos.attach(io: file, filename: "drill 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306998/Dama/Pantalon%20Drill/3377-verde%20oliva/3377-2_ik0ocn.jpg")
product_55.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696307000/Dama/Pantalon%20Drill/3377-verde%20oliva/3377-3_w1dvvy.jpg")
product_55.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

puts "producto 56"
product_56 = Product.create(
  name: "Pantalon de Drill Rosado",
  description: "Pantalon de Drill color Rosado para Dama",
  price: 60000,
  quantity: 4,
  wholesale_price: 52000,
  ref: 3377,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: pantalon_drill_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_56.id, color_id: pink.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_56.id, size_id: size_8.id)
ProductSize.create(product_id: product_56.id, size_id: size_10.id)
ProductSize.create(product_id: product_56.id, size_id: size_12.id)
ProductSize.create(product_id: product_56.id, size_id: size_14.id)
ProductSize.create(product_id: product_56.id, size_id: size_16.id)


file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306991/Dama/Pantalon%20Drill/3377-rosado/3377-1_k6ouxu.jpg")
product_56.photos.attach(io: file, filename: "drill 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306992/Dama/Pantalon%20Drill/3377-rosado/3377-2_oc1wvx.jpg")
product_56.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306994/Dama/Pantalon%20Drill/3377-rosado/3377-3_tkomof.jpg")
product_56.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

puts "producto 57"
product_57 = Product.create(
  name: "Pantalon de Drill Azul cielo",
  description: "Pantalon de Drill color Azul cielo para Dama",
  price: 60000,
  quantity: 4,
  wholesale_price: 52000,
  ref: 3377,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: pantalon_drill_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_57.id, color_id: sky_blue.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_57.id, size_id: size_8.id)
ProductSize.create(product_id: product_57.id, size_id: size_10.id)
ProductSize.create(product_id: product_57.id, size_id: size_12.id)
ProductSize.create(product_id: product_57.id, size_id: size_14.id)
ProductSize.create(product_id: product_57.id, size_id: size_16.id)


file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306981/Dama/Pantalon%20Drill/3377-azul%20cielo/3377-2_roovus.jpg")
product_57.photos.attach(io: file, filename: "drill 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306979/Dama/Pantalon%20Drill/3377-azul%20cielo/3377-1_erxzau.jpg")
product_57.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306983/Dama/Pantalon%20Drill/3377-azul%20cielo/3377-3_fzz6es.jpg")
product_57.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

puts "producto 58"
product_58 = Product.create(
  name: "Pantalon de Drill cafe",
  description: "Pantalon de Drill color cafe para Dama",
  price: 60000,
  quantity: 4,
  wholesale_price: 52000,
  ref: 3377,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: pantalon_drill_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_58.id, color_id: coffe.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_58.id, size_id: size_8.id)
ProductSize.create(product_id: product_58.id, size_id: size_10.id)
ProductSize.create(product_id: product_58.id, size_id: size_12.id)
ProductSize.create(product_id: product_58.id, size_id: size_14.id)
ProductSize.create(product_id: product_58.id, size_id: size_16.id)


file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306985/Dama/Pantalon%20Drill/3377-cafe/3377-1_dlt6bz.jpg")
product_58.photos.attach(io: file, filename: "drill 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306989/Dama/Pantalon%20Drill/3377-cafe/3377-3_t2xlzw.jpg")
product_58.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696306987/Dama/Pantalon%20Drill/3377-cafe/3377-2_yo83nf.jpg")
product_58.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

puts "producto 59"
product_59 = Product.create(
  name: "Pantalon cargo beige",
  description: "Pantalon de Drill color beige claro para Dama",
  price: 70000,
  quantity: 4,
  wholesale_price: 60000,
  ref: 3347,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: cargo_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_59.id, color_id: light_beige.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_59.id, size_id: size_8.id)
ProductSize.create(product_id: product_59.id, size_id: size_10.id)
ProductSize.create(product_id: product_59.id, size_id: size_12.id)
ProductSize.create(product_id: product_59.id, size_id: size_14.id)
ProductSize.create(product_id: product_59.id, size_id: size_16.id)

puts "producto 60"
product_60 = Product.create(
  name: "Pantalon cargo gris",
  description: "Pantalon de Drill color gris para Dama",
  price: 70000,
  quantity: 4,
  wholesale_price: 60000,
  ref: 3369,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: cargo_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_60.id, color_id: taupe_grey.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_60.id, size_id: size_8.id)
ProductSize.create(product_id: product_60.id, size_id: size_10.id)
ProductSize.create(product_id: product_60.id, size_id: size_12.id)
ProductSize.create(product_id: product_60.id, size_id: size_14.id)
ProductSize.create(product_id: product_60.id, size_id: size_16.id)


file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696309255/Dama/Drill%20Cargo/3369-gris%20pardo/1_scmpwh.jpg")
product_60.photos.attach(io: file, filename: "drill 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696309258/Dama/Drill%20Cargo/3369-gris%20pardo/2_acvrmi.jpg")
product_60.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696309260/Dama/Drill%20Cargo/3369-gris%20pardo/3_jibmms.jpg")
product_60.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

puts "producto 61"
product_61 = Product.create(
  name: "Pantalon cargo negro",
  description: "Pantalon de Drill color negro para Dama",
  price: 70000,
  quantity: 4,
  wholesale_price: 60000,
  ref: 3369,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: cargo_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_61.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_61.id, size_id: size_8.id)
ProductSize.create(product_id: product_61.id, size_id: size_10.id)
ProductSize.create(product_id: product_61.id, size_id: size_12.id)
ProductSize.create(product_id: product_61.id, size_id: size_14.id)
ProductSize.create(product_id: product_61.id, size_id: size_16.id)


file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696309268/Dama/Drill%20Cargo/3369-negro/1_prx8l1.jpg")
product_61.photos.attach(io: file, filename: "drill 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696309270/Dama/Drill%20Cargo/3369-negro/2_cccr1w.jpg")
product_61.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696309275/Dama/Drill%20Cargo/3369-negro/3_x0qjx9.jpg")
product_61.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

puts "producto 62"
product_62 = Product.create(
  name: "Pantalon cargo rojizo",
  description: "Pantalon de Drill color Marron rojizo para Dama",
  price: 70000,
  quantity: 4,
  wholesale_price: 60000,
  ref: 3369,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: cargo_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_62.id, color_id: reddish_brown.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_62.id, size_id: size_8.id)
ProductSize.create(product_id: product_62.id, size_id: size_10.id)
ProductSize.create(product_id: product_62.id, size_id: size_12.id)
ProductSize.create(product_id: product_62.id, size_id: size_14.id)


file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696309449/Dama/Drill%20Cargo/3369-rojizo/CATALOGO_T_D-42-52_page-0009_yclsrn.jpg")
product_62.photos.attach(io: file, filename: "drill 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696309277/Dama/Drill%20Cargo/3369-rojizo/2_undzs7.jpg")
product_62.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696309446/Dama/Drill%20Cargo/3369-rojizo/3_fzw51a.jpg")
product_62.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

puts "producto 63"
product_63 = Product.create(
  name: "Pantalon cargo Marron",
  description: "Pantalon de Drill color Marron para Dama",
  price: 70000,
  quantity: 4,
  wholesale_price: 60000,
  ref: 3369,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: cargo_lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_63.id, color_id: brown.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_63.id, size_id: size_10.id)
ProductSize.create(product_id: product_63.id, size_id: size_12.id)
ProductSize.create(product_id: product_63.id, size_id: size_14.id)


file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696309266/Dama/Drill%20Cargo/3369-marron/CATALOGO_T_D-42-52_page-0010_rmemlw.jpg")
product_63.photos.attach(io: file, filename: "drill 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696309261/Dama/Drill%20Cargo/3369-marron/2_m8lm4s.jpg")
product_63.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1696309264/Dama/Drill%20Cargo/3369-marron/3_ncc4ml.jpg")
product_63.photos.attach(io: file, filename: "drill 2" , content_type: "image/jpg")


puts "Productos creados exitosamente"

puts "Cargando imagenes del banner"
file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695588834/Banner_Tendencias/banner_1_tguybu.jpg")
user.photos.attach(io: file, filename: "image_1.jpeg" , content_type: "image/jpg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/image_1.jpeg")
# user.photos.attach(io: URI.open(uploaded_image['url']), filename: "image_1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694141562/Banner_Tendencias/logo_grande_utyhmk.png")
user.photos.attach(io: file, filename: "logo grande" , content_type: "image/jpg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/logo grande.png")
# user.photos.attach(io: URI.open(uploaded_image['url']), filename: "logo grande.png", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695588835/Banner_Tendencias/banner_3_wa61fm.jpg")
user.photos.attach(io: file, filename: "image_" , content_type: "image/jpg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/image_3.jpeg")
# user.photos.attach(io: URI.open(uploaded_image['url']), filename: "image_1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1695588833/Banner_Tendencias/banner_4_yuelo1.jpg")
user.photos.attach(io: file, filename: "image_" , content_type: "image/jpg")

puts "Imagenes del banner cargadas"
