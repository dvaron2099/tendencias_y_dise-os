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
puts "Bermuda"
category_short_men = Category.create(category_type: "Bermuda", gender_id: gentleman.id)
puts "Jean Confort Azul"
category_jean_confort_azul = Category.create(category_type: "Jean Confort Azul", gender_id: gentleman.id)
puts "Jean Confort"
category_jean_confort = Category.create(category_type: "Jean Confort", gender_id: gentleman.id)
puts "Jean Azul"
category_blue_jean_lady = Category.create(category_type: "Jean Azul", gender_id: lady.id)
puts "Torero"
category_torero_lady = Category.create(category_type: "Torero", gender_id: lady.id)
puts "Chaleco"
category_chaleco_lady = Category.create(category_type: "Chaleco", gender_id: lady.id)
puts "Short de jean Azul"
category_short_jean_blue = Category.create(category_type: "Short Azul", gender_id: lady.id)
puts "Short de jean Tiro Alto"
category_short_jean_tiro_alto_lady = Category.create(category_type: "Short Azul Tiro Alto", gender_id: lady.id)
puts "Short de jean"
category_short_jean_lady = Category.create(category_type: "Short", gender_id: lady.id)
puts "Jean Negro"
category_black_jean_lady = Category.create(category_type: "Jean Negro", gender_id: lady.id)
puts "Jean Gris"
category_gris_jean_lady = Category.create(category_type: "Jean Gris", gender_id: lady.id)
puts ""
puts ""
puts "Creando Colores"
puts "Gris claro"
light_grey = Color.create(
  name: "Gris claro",
  hex_code: "#8c8c8c"
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
  category_id: category_short_men.id
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
  category_id: category_short_men.id
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
  category_id: category_short_men.id
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
  category_id: category_short_men.id
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
  category_id: category_short_men.id
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
  category_id: category_short_men.id
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
  category_id: category_jean_confort_azul.id
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
  category_id: category_jean_confort_azul.id
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
  category_id: category_jean_confort_azul.id
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
  category_id: category_jean_confort_azul.id
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
  category_id: category_jean_confort_azul.id
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
  category_id: category_jean_confort_azul.id
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
  category_id: category_jean_confort.id
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
  category_id: category_jean_confort.id
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
puts ""
puts "Productos para Dama"
puts ""
puts "producto 15"
product_15 = Product.create(
  name: "Blue Jean Skinny Tiro Alto - 3355",
  description: "Blue Jean Skinny Tiro Alto para Dama",
  price: 30000,
  ref: 3355,
  availability: "Disponible",
  gender_id: lady.id,
  category_id: category_blue_jean_lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_13.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
ProductColor.create(product_id: product_15.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_15.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_15.id, size_id: size_6.id)
ProductSize.create(product_id: product_15.id, size_id: size_8.id)
ProductSize.create(product_id: product_15.id, size_id: size_10.id)
ProductSize.create(product_id: product_15.id, size_id: size_12.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Blue Jean - 3355/Blue Jean 3355-3.jpeg")
# product_15.photos.attach(io: URI.open(uploaded_image['url']), filename: "Blue Jean 3355-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Blue Jean - 3355/Blue Jean 3355-2.jpeg")
# product_15.photos.attach(io: URI.open(uploaded_image['url']), filename: "Blue Jean 3355-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Blue Jean - 3355/Blue Jean 3355-1.jpeg")
# product_15.photos.attach(io: URI.open(uploaded_image['url']), filename: "Blue Jean 3355-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133963/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Blue%20Jean%20-%203355/Blue_Jean_3355-1_sxzot1.jpg")
product_15.photos.attach(io: file, filename: "Blue Jean 3355-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133963/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Blue%20Jean%20-%203355/Blue_Jean_3355-2_uoikpe.jpg")
product_15.photos.attach(io: file, filename: "Blue Jean 3355-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133964/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Blue%20Jean%20-%203355/Blue_Jean_3355-3_i6tksh.jpg")
product_15.photos.attach(io: file, filename: "Blue Jean 3355-3" , content_type: "image/jpg")

puts "producto 16"
product_16 = Product.create(
  name: "Blue Jean Skinny Tiro Alto - 3356",
  description: "Blue Jean Skinny Tiro Alto para Dama",
  price: 30000,
  ref: 3356,
  availability: "Disponible",
  category_id: category_blue_jean_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_13.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_15.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
ProductColor.create(product_id: product_16.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_15.id, color_id: black.id)

# # Asocia los tallas con el producto
# ProductSize.create(product_id: product_16.id, size_id: size_6.id)
# ProductSize.create(product_id: product_16.id, size_id: size_8.id)
ProductSize.create(product_id: product_16.id, size_id: size_10.id)
# ProductSize.create(product_id: product_16.id, size_id: size_12.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Blue Jean - 3356/Blue Jean 3356-3.jpeg")
# product_16.photos.attach(io: URI.open(uploaded_image['url']), filename: "Blue Jean 3356-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Blue Jean - 3356/Blue Jean 3356-2.jpeg")
# product_16.photos.attach(io: URI.open(uploaded_image['url']), filename: "Blue Jean 3356-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Blue Jean - 3356/Blue Jean 3356-1.jpeg")
# product_16.photos.attach(io: URI.open(uploaded_image['url']), filename: "Blue Jean 3356-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133965/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Blue%20Jean%20-%203356/Blue_Jean_3356-1_qbzkux.jpg")
product_16.photos.attach(io: file, filename: "Blue Jean 3356-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133966/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Blue%20Jean%20-%203356/Blue_Jean_3356-2_muvggy.jpg")
product_16.photos.attach(io: file, filename: "Blue Jean 3356-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133966/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Blue%20Jean%20-%203356/Blue_Jean_3356-3_q1aghm.jpg")
product_16.photos.attach(io: file, filename: "Blue Jean 3356-1" , content_type: "image/jpg")

puts "producto 17"
product_17 = Product.create(
  name: "Blue Jean Skinny Tiro Alto - 3375",
  description: "Blue Jean Skinny Tiro Alto para Dama",
  price: 30000,
  ref: 3375,
  availability: "Disponible",
  category_id: category_blue_jean_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_13.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
ProductColor.create(product_id: product_17.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_16.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_15.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_17.id, size_id: size_6.id)
ProductSize.create(product_id: product_17.id, size_id: size_8.id)
ProductSize.create(product_id: product_17.id, size_id: size_10.id)
ProductSize.create(product_id: product_17.id, size_id: size_12.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3375/Jean Skinny Tiro Alto 3375-3.jpeg")
# product_17.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3375-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3375/Jean Skinny Tiro Alto 3375-2.jpeg")
# product_17.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3375-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3375/Jean Skinny Tiro Alto 3375-1.jpeg")
# product_17.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3375-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133967/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203375/Jean_Skinny_Tiro_Alto_3375-1_onzzk7.jpg")
product_17.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3375-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133968/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203375/Jean_Skinny_Tiro_Alto_3375-2_njvwgn.jpg")
product_17.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3375-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133968/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203375/Jean_Skinny_Tiro_Alto_3375-3_zl8jxe.jpg")
product_17.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3375-3" , content_type: "image/jpg")

puts "producto 18"
product_18 = Product.create(
  name: "Blue Jean Skinny Tiro Alto - 3376",
  description: "Blue Jean Skinny Tiro Alto para Dama",
  price: 30000,
  ref: 3376,
  availability: "Disponible",
  category_id: category_blue_jean_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_13.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
ProductColor.create(product_id: product_18.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_16.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_15.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_18.id, size_id: size_6.id)
ProductSize.create(product_id: product_18.id, size_id: size_8.id)
ProductSize.create(product_id: product_18.id, size_id: size_10.id)
ProductSize.create(product_id: product_18.id, size_id: size_12.id)

# ploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3376/Jean Skinny Tiro Alto 3376-3.jpeg")
# roduct_18.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3378-3.jpeg", content_type: "image/jpeg")
# ploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3376/Jean Skinny Tiro Alto 3376-2.jpeg")
# roduct_18.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3378-2.jpeg", content_type: "image/jpeg")
# ploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3376/Jean Skinny Tiro Alto 3376-1.jpeg")
# roduct_18.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3378-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133969/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203376/Jean_Skinny_Tiro_Alto_3376-1_ielmkg.jpg")
product_18.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3376-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133970/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203376/Jean_Skinny_Tiro_Alto_3376-2_xheomy.jpg")
product_18.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3376-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133970/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203376/Jean_Skinny_Tiro_Alto_3376-3_eisnn8.jpg")
product_18.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3376-3" , content_type: "image/jpg")

puts "producto 19"
product_19 = Product.create(
  name: "Blue Jean Skinny Tiro Alto - 3378",
  description: "Blue Jean Skinny Tiro Alto para Dama",
  price: 30000,
  ref: 3378,
  availability: "Disponible",
  category_id: category_blue_jean_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_13.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_18.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
ProductColor.create(product_id: product_19.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_15.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_19.id, size_id: size_6.id)
ProductSize.create(product_id: product_19.id, size_id: size_8.id)
ProductSize.create(product_id: product_19.id, size_id: size_10.id)
ProductSize.create(product_id: product_19.id, size_id: size_12.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3378/Jean Skinny Tiro Alto 3378-3.jpeg")
# product_19.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3378-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3378/Jean Skinny Tiro Alto 3378-2.jpeg")
# product_19.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3378-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3378/Jean Skinny Tiro Alto 3378-1.jpeg")
# product_19.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3378-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133971/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203378/Jean_Skinny_Tiro_Alto_3378-1_fwkoix.jpg")
product_19.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3378-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133972/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203378/Jean_Skinny_Tiro_Alto_3378-2_w4temt.jpg")
product_19.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3378-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133973/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203378/Jean_Skinny_Tiro_Alto_3378-3_ra8hkh.jpg")
product_19.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3378-3" , content_type: "image/jpg")

puts "producto 20"
product_20 = Product.create(
  name: "Blue Jean Skinny Tiro Alto - 3379",
  description: "Blue Jean Skinny Tiro Alto para Dama",
  price: 30000,
  ref: 3379,
  availability: "Disponible",
  category_id: category_blue_jean_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_13.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
ProductColor.create(product_id: product_20.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_19.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_15.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_20.id, size_id: size_6.id)
ProductSize.create(product_id: product_20.id, size_id: size_8.id)
ProductSize.create(product_id: product_20.id, size_id: size_10.id)
ProductSize.create(product_id: product_20.id, size_id: size_12.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3378/Jean Skinny Tiro Alto 3378-3.jpeg")
# product_20.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3378-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3378/Jean Skinny Tiro Alto 3378-2.jpeg")
# product_20.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3378-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3378/Jean Skinny Tiro Alto 3378-1.jpeg")
# product_20.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3378-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133973/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203379/Jean_Skinny_Tiro_Alto_3379-1_xczkbn.jpg")
product_20.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3379-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133974/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203379/Jean_Skinny_Tiro_Alto_3379-2_vqhibt.jpg")
product_20.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3379-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133975/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203379/Jean_Skinny_Tiro_Alto_3379-3_smbe9r.jpg")
product_20.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3379-3" , content_type: "image/jpg")

puts "producto 21"
product_21 = Product.create(
  name: "Blue Jean Skinny Tiro Alto - 3380",
  description: "Blue Jean Skinny Tiro Alto para Dama",
  price: 30000,
  ref: 3380,
  availability: "Disponible",
  category_id: category_blue_jean_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_13.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_20.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
ProductColor.create(product_id: product_21.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_15.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_21.id, size_id: size_6.id)
ProductSize.create(product_id: product_21.id, size_id: size_8.id)
ProductSize.create(product_id: product_21.id, size_id: size_10.id)
ProductSize.create(product_id: product_21.id, size_id: size_12.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3380/Jean Skinny Tiro Alto 3380-3.jpeg")
# product_21.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3380-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3380/Jean Skinny Tiro Alto 3380-2.jpeg")
# product_21.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3380-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Blue Jean Skinny Tiro Alto/Jean Skinny Tiro Alto - 3380/Jean Skinny Tiro Alto 3380-1.jpeg")
# product_21.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Skinny Tiro Alto 3380-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133976/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203380/Jean_Skinny_Tiro_Alto_3380-1_ppkipm.jpg")
product_21.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3380-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133976/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203380/Jean_Skinny_Tiro_Alto_3380-2_ip9grg.jpg")
product_21.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3380-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133977/Dama/Blue%20Jean%20Skinny%20Tiro%20Alto/Jean%20Skinny%20Tiro%20Alto%20-%203380/Jean_Skinny_Tiro_Alto_3380-3_jbcsnj.jpg")
product_21.photos.attach(io: file, filename: "Jean Skinny Tiro Alto 3380-3" , content_type: "image/jpg")

puts "producto 22"
product_22 = Product.create(
  name: "Chaleco - 3277",
  description: "Hermoso Chaleco para Dama",
  price: 30000,
  ref: 3277,
  availability: "Disponible",
  category_id: category_chaleco_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_13.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_20.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_22.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_21.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_15.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_22.id, size_id: size_S.id)
ProductSize.create(product_id: product_22.id, size_id: size_M.id)
ProductSize.create(product_id: product_22.id, size_id: size_XL.id)
ProductSize.create(product_id: product_22.id, size_id: size_XXL.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Chaleco/Chaleco - 3277/Chaleco 3277-1.jpeg")
# product_22.photos.attach(io: URI.open(uploaded_image['url']), filename: "Chaleco 3277-1.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Chaleco/Chaleco - 3277/Chaleco 3277-2.jpeg")
# product_22.photos.attach(io: URI.open(uploaded_image['url']), filename: "Chaleco 3277-2.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133979/Dama/Chaleco/Chaleco%20-%203277/Chaleco_3277-1_pb6qdb.jpg")
product_22.photos.attach(io: file, filename: "Chaleco 3277-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133980/Dama/Chaleco/Chaleco%20-%203277/Chaleco_3277-2_nlxqjz.jpg")
product_22.photos.attach(io: file, filename: "Chaleco 3277-2" , content_type: "image/jpg")

puts "producto 23"
product_23 = Product.create(
  name: "Chaleco - 3344",
  description: "Hermoso Chaleco para Dama",
  price: 30000,
  ref: 3344,
  availability: "Disponible",
  category_id: category_chaleco_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_13.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_20.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_23.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_21.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_15.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_23.id, size_id: size_S.id)
ProductSize.create(product_id: product_23.id, size_id: size_M.id)
ProductSize.create(product_id: product_23.id, size_id: size_XL.id)
ProductSize.create(product_id: product_23.id, size_id: size_XXL.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Chaleco/Chaleco - 3344/Chaleco 3344-1.jpeg")
# product_23.photos.attach(io: URI.open(uploaded_image['url']), filename: "Chaleco 3344-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133980/Dama/Chaleco/Chaleco%20-%203344/Chaleco_3344-1_nkirzg.jpg")
product_23.photos.attach(io: file, filename: "Chaleco 3344-1" , content_type: "image/jpg")

puts "producto 24"
product_24 = Product.create(
  name: "Chaleco - 3345",
  description: "Hermoso Chaleco para Dama",
  price: 30000,
  ref: 3345,
  availability: "Disponible",
  category_id: category_chaleco_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_13.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_20.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_24.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_21.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_15.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_24.id, size_id: size_S.id)
ProductSize.create(product_id: product_24.id, size_id: size_M.id)
ProductSize.create(product_id: product_24.id, size_id: size_XL.id)
ProductSize.create(product_id: product_24.id, size_id: size_XXL.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Chaleco/Chaleco - 3345/Chaleco 3345-1.jpeg")
# product_24.photos.attach(io: URI.open(uploaded_image['url']), filename: "Chaleco 3345-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133981/Dama/Chaleco/Chaleco%20-%203345/Chaleco_3345-1_x5enml.jpg")
product_24.photos.attach(io: file, filename: "Chaleco 3345-1" , content_type: "image/jpg")

puts "producto 25"
product_25 = Product.create(
  name: "Jean Negro - 3247",
  description: "Jean Negro para Dama",
  price: 30000,
  ref: 3247,
  availability: "Disponible",
  category_id: category_black_jean_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_13.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_20.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_21.id, color_id: light_blue.id)
ProductColor.create(product_id: product_25.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_25.id, size_id: size_6.id)
ProductSize.create(product_id: product_25.id, size_id: size_8.id)
ProductSize.create(product_id: product_25.id, size_id: size_10.id)
ProductSize.create(product_id: product_25.id, size_id: size_12.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Jean negro/Jean negro - 3247/Jean negro 3247-1.jpeg")
# product_25.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean negro 3247-1.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Jean negro/Jean negro - 3247/Jean negro 3247-2.jpeg")
# product_25.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean negro 3247-2.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133982/Dama/Jean%20negro/Jean%20negro%20-%203247/Jean_negro_3247-1_gm0hcm.jpg")
product_25.photos.attach(io: file, filename: "Jean negro 3247-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133982/Dama/Jean%20negro/Jean%20negro%20-%203247/Jean_negro_3247-2_nzpi8x.jpg")
product_25.photos.attach(io: file, filename: "Jean negro 3247-2" , content_type: "image/jpg")

puts "producto 26"
product_26 = Product.create(
  name: "Jean Negro Streach - 3340",
  description: "Jean Negro Streach para Dama",
  price: 30000,
  ref: 3340,
  availability: "Disponible",
  category_id: category_black_jean_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_13.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_20.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_21.id, color_id: light_blue.id)
ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_26.id, size_id: size_8.id)
ProductSize.create(product_id: product_26.id, size_id: size_10.id)
ProductSize.create(product_id: product_26.id, size_id: size_12.id)
ProductSize.create(product_id: product_26.id, size_id: size_16.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Jean negro/Jean negro strech - 3340/Jean Strech Gris 3343-3.jpeg")
# product_26.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Strech Gris 3343-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Jean negro/Jean negro strech - 3340/Jean Strech Gris 3343-2.jpeg")
# product_26.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Strech Gris 3343-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Jean negro/Jean negro strech - 3340/Jean Strech Gris 3343-1.jpeg")
# product_26.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Strech Gris 3343-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133983/Dama/Jean%20negro/Jean%20negro%20strech%20-%203340/Jean_Strech_Gris_3343-1_ji4kvu.jpg")
product_26.photos.attach(io: file, filename: "Jean Negro Streach - 1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133983/Dama/Jean%20negro/Jean%20negro%20strech%20-%203340/Jean_Strech_Gris_3343-2_fmvioc.jpg")
product_26.photos.attach(io: file, filename: "Jean Negro Streach - 2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133984/Dama/Jean%20negro/Jean%20negro%20strech%20-%203340/Jean_Strech_Gris_3343-3_qz7ya2.jpg")
product_26.photos.attach(io: file, filename: "Jean Negro Streach - 3" , content_type: "image/jpg")

puts "producto 27"
product_27 = Product.create(
  name: "Jean Gris Streach - 3343",
  description: "Jean Gris Streach para Dama",
  price: 30000,
  ref: 3343,
  availability: "Disponible",
  category_id: category_gris_jean_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_13.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_20.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_21.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_27.id, size_id: size_8.id)
ProductSize.create(product_id: product_27.id, size_id: size_10.id)
ProductSize.create(product_id: product_27.id, size_id: size_12.id)
ProductSize.create(product_id: product_27.id, size_id: size_16.id)
ProductSize.create(product_id: product_27.id, size_id: size_18.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Jean Strech Gris/Jean Strech Gris  - 3343/Jean Strech Gris 3343-3.jpeg")
# product_27.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Strech Gris 3343-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Jean Strech Gris/Jean Strech Gris  - 3343/Jean Strech Gris 3343-2.jpeg")
# product_27.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Strech Gris 3343-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Jean Strech Gris/Jean Strech Gris  - 3343/Jean Strech Gris 3343-1.jpeg")
# product_27.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Strech Gris 3343-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133985/Dama/Jean%20Strech%20Gris/Jean%20Strech%20Gris%20%20-%203343/Jean_Strech_Gris_3343-1_uij4c9.jpg")
product_27.photos.attach(io: file, filename: "Jean Strech Gris 3343-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133986/Dama/Jean%20Strech%20Gris/Jean%20Strech%20Gris%20%20-%203343/Jean_Strech_Gris_3343-2_hlawfj.jpg")
product_27.photos.attach(io: file, filename: "Jean Strech Gris 3343-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133986/Dama/Jean%20Strech%20Gris/Jean%20Strech%20Gris%20%20-%203343/Jean_Strech_Gris_3343-3_e3prsf.jpg")
product_27.photos.attach(io: file, filename: "Jean Strech Gris 3343-3" , content_type: "image/jpg")

puts "producto 28"
product_28 = Product.create(
  name: "Jean Gris Streach - 3352",
  description: "Jean Gris Streach para Dama",
  price: 30000,
  ref: 3352,
  availability: "Disponible",
  category_id: category_gris_jean_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
ProductColor.create(product_id: product_28.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_20.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_21.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_28.id, size_id: size_6.id)
ProductSize.create(product_id: product_28.id, size_id: size_8.id)
ProductSize.create(product_id: product_28.id, size_id: size_10.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Jean Strech Gris/Jean Strech Gris  - 3352 - copia/Jean Strech Gris 3343-3.jpeg")
# product_28.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Strech Gris 3343-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Jean Strech Gris/Jean Strech Gris  - 3352 - copia/Jean Strech Gris 3352-2.jpeg")
# product_28.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Strech Gris 3343-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Jean Strech Gris/Jean Strech Gris  - 3352 - copia/Jean Strech Gris 3352-1.jpeg")
# product_28.photos.attach(io: URI.open(uploaded_image['url']), filename: "Jean Strech Gris 3343-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133987/Dama/Jean%20Strech%20Gris/Jean%20Strech%20Gris%20%20-%203352%20-%20copia/Jean_Strech_Gris_3352-1_whazid.jpg")
product_28.photos.attach(io: file, filename: "Jean Strech Gris 3352-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133991/Dama/Jean%20Strech%20Gris/Jean%20Strech%20Gris%20%20-%203352%20-%20copia/Jean_Strech_Gris_3352-2_hxilw2.jpg")
product_28.photos.attach(io: file, filename: "Jean Strech Gris 3352-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133987/Dama/Jean%20Strech%20Gris/Jean%20Strech%20Gris%20%20-%203352%20-%20copia/Jean_Strech_Gris_3343-3_mrhlcr.jpg")
product_28.photos.attach(io: file, filename: "Jean Strech Gris 3352-3" , content_type: "image/jpg")

puts "producto 29"
product_29 = Product.create(
  name: "Short Blue Jean - 3239",
  description: "Short Blue Jean para Dama",
  price: 30000,
  ref: 3239,
  availability: "Disponible",
  category_id: category_short_jean_blue.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_28.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_20.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_29.id, size_id: size_8.id)
ProductSize.create(product_id: product_29.id, size_id: size_10.id)
ProductSize.create(product_id: product_29.id, size_id: size_12.id)
ProductSize.create(product_id: product_29.id, size_id: size_16.id)
ProductSize.create(product_id: product_29.id, size_id: size_18.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3239/Short Blue Jean 3239-3.jpeg")
# product_29.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3239-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3239/Short Blue Jean 3239-2.jpeg")
# product_29.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3239-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3239/Short Blue Jean 3239-1.jpeg")
# product_29.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3239-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133992/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203239/Short_Blue_Jean_3239-1_me7zad.jpg")
product_29.photos.attach(io: file, filename: "Short Blue Jean 3239-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133993/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203239/Short_Blue_Jean_3239-2_dsinlv.jpg")
product_29.photos.attach(io: file, filename: "Short Blue Jean 3239-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133994/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203239/Short_Blue_Jean_3239-3_pnxvl9.jpg")
product_29.photos.attach(io: file, filename: "Short Blue Jean 3239-3" , content_type: "image/jpg")

puts "producto 30"
product_30 = Product.create(
  name: "Short Blue Jean - 3285",
  description: "Short Blue Jean para Dama",
  price: 30000,
  ref: 3285,
  availability: "Disponible",
  category_id: category_short_jean_blue.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_28.id, color_id: dark_grey.id)
ProductColor.create(product_id: product_30.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_13.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_30.id, size_id: size_8.id)
ProductSize.create(product_id: product_30.id, size_id: size_10.id)
ProductSize.create(product_id: product_30.id, size_id: size_12.id)
ProductSize.create(product_id: product_30.id, size_id: size_14.id)
ProductSize.create(product_id: product_30.id, size_id: size_16.id)
ProductSize.create(product_id: product_30.id, size_id: size_18.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3285/Short Blue Jean 3285-3.jpeg")
# product_30.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3285-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3285/Short Blue Jean 3285-2.jpeg")
# product_30.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3285-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3285/Short Blue Jean 3285-1.jpeg")
# product_30.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3285-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133994/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203285/Short_Blue_Jean_3285-1_ubudcw.jpg")
product_30.photos.attach(io: file, filename: "Short Blue Jean 3285-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133995/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203285/Short_Blue_Jean_3285-2_jmewvp.jpg")
product_30.photos.attach(io: file, filename: "Short Blue Jean 3285-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133995/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203285/Short_Blue_Jean_3285-3_edijdo.jpg")
product_30.photos.attach(io: file, filename: "Short Blue Jean 3285-3" , content_type: "image/jpg")

puts "producto 31"
product_31 = Product.create(
  name: "Short Blue Jean - 3297",
  description: "Short Blue Jean para Dama",
  price: 30000,
  ref: 3297,
  availability: "Disponible",
  category_id: category_short_jean_blue.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_28.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_30.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_31.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_31.id, size_id: size_8.id)
ProductSize.create(product_id: product_31.id, size_id: size_10.id)
ProductSize.create(product_id: product_31.id, size_id: size_12.id)
ProductSize.create(product_id: product_31.id, size_id: size_14.id)
ProductSize.create(product_id: product_31.id, size_id: size_16.id)
ProductSize.create(product_id: product_31.id, size_id: size_18.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3297/Short Blue Jean 3297-3.jpeg")
# product_31.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3297-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3297/Short Blue Jean 3297-2.jpeg")
# product_31.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3297-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3297/Short Blue Jean 3297-1.jpeg")
# product_31.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3297-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133996/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203297/Short_Blue_Jean_3297-1_tvs0kc.jpg")
product_31.photos.attach(io: file, filename: "Short Blue Jean 3297-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133997/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203297/Short_Blue_Jean_3297-2_h96phs.jpg")
product_31.photos.attach(io: file, filename: "Short Blue Jean 3297-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133997/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203297/Short_Blue_Jean_3297-3_gayg4m.jpg")
product_31.photos.attach(io: file, filename: "Short Blue Jean 3297-3" , content_type: "image/jpg")

puts "producto 32"
product_32 = Product.create(
  name: "Short Blue Jean - 3325",
  description: "Short Blue Jean para Dama",
  price: 30000,
  ref: 3325,
  availability: "Disponible",
  category_id: category_short_jean_blue.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_28.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_30.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_32.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_32.id, size_id: size_6.id)
ProductSize.create(product_id: product_32.id, size_id: size_8.id)
ProductSize.create(product_id: product_32.id, size_id: size_10.id)
ProductSize.create(product_id: product_32.id, size_id: size_12.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3325/Short Blue Jean 3325-1.jpeg")
# product_32.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3325-1.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3325/Short Blue Jean 3325-2.jpeg")
# product_32.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3325-2.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133998/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203325/Short_Blue_Jean_3325-1_axa7pv.jpg")
product_32.photos.attach(io: file, filename: "Short Blue Jean 3325-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133999/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203325/Short_Blue_Jean_3325-2_zi7eoe.jpg")
product_32.photos.attach(io: file, filename: "Short Blue Jean 3325-2" , content_type: "image/jpg")

puts "producto 33"
product_33 = Product.create(
  name: "Short Blue Jean - 3332",
  description: "Short Blue Jean para Dama",
  price: 30000,
  ref: 3332,
  availability: "Disponible",
  category_id: category_short_jean_blue.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_28.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_30.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_33.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_33.id, size_id: size_8.id)
ProductSize.create(product_id: product_33.id, size_id: size_10.id)
ProductSize.create(product_id: product_33.id, size_id: size_12.id)
ProductSize.create(product_id: product_33.id, size_id: size_14.id)
ProductSize.create(product_id: product_33.id, size_id: size_16.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3332/Short Blue Jean 3332-3.jpeg")
# product_33.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3332-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3332/Short Blue Jean 3332-2.jpeg")
# product_33.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3332-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3332/Short Blue Jean 3332-1.jpeg")
# product_33.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3332-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694133999/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203332/Short_Blue_Jean_3332-1_mcmftn.jpg")
product_33.photos.attach(io: file, filename: "Short Blue Jean 3332-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134008/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203332/Short_Blue_Jean_3332-2_cqmpeo.jpg")
product_33.photos.attach(io: file, filename: "Short Blue Jean 3332-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134009/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203332/Short_Blue_Jean_3332-3_l8afu1.jpg")
product_33.photos.attach(io: file, filename: "Short Blue Jean 3332-3" , content_type: "image/jpg")

puts "producto 34"
product_34 = Product.create(
  name: "Short Blue Jean - 3333",
  description: "Short Blue Jean para Dama",
  price: 30000,
  ref: 3333,
  availability: "Disponible",
  category_id: category_short_jean_blue.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_28.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_30.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_34.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_34.id, size_id: size_8.id)
ProductSize.create(product_id: product_34.id, size_id: size_10.id)
ProductSize.create(product_id: product_34.id, size_id: size_12.id)
ProductSize.create(product_id: product_34.id, size_id: size_14.id)
ProductSize.create(product_id: product_34.id, size_id: size_16.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3333/Short Blue Jean 3333-1.jpeg")
# product_34.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3333-1.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3333/Short Blue Jean 3333-2.jpeg")
# product_34.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3333-2.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134010/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203333/Short_Blue_Jean_3333-1_dkqvlr.jpg")
product_34.photos.attach(io: file, filename: "Short Blue Jean 3333-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134011/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203333/Short_Blue_Jean_3333-2_uycbwy.jpg")
product_34.photos.attach(io: file, filename: "Short Blue Jean 3333-2" , content_type: "image/jpg")

puts "producto 35"
product_35 = Product.create(
  name: "Short Blue Jean - 3348",
  description: "Short Blue Jean para Dama",
  price: 30000,
  ref: 3348,
  availability: "Disponible",
  category_id: category_short_jean_blue.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_28.id, color_id: dark_grey.id)
ProductColor.create(product_id: product_35.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_34.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_35.id, size_id: size_6.id)
ProductSize.create(product_id: product_35.id, size_id: size_8.id)
ProductSize.create(product_id: product_35.id, size_id: size_10.id)
ProductSize.create(product_id: product_35.id, size_id: size_12.id)
ProductSize.create(product_id: product_35.id, size_id: size_14.id)
ProductSize.create(product_id: product_35.id, size_id: size_16.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3348/Short Blue Jean 3348-3.jpeg")
# product_35.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3348-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3348/Short Blue Jean 3348-2.jpeg")
# product_35.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3348-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3348/Short Blue Jean 3348-1.jpeg")
# product_35.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3348-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134011/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203348/Short_Blue_Jean_3348-1_febwau.jpg")
product_35.photos.attach(io: file, filename: "Short Blue Jean 3348-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134012/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203348/Short_Blue_Jean_3348-2_besuit.jpg")
product_35.photos.attach(io: file, filename: "Short Blue Jean 3348-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134013/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203348/Short_Blue_Jean_3348-3_wvlzgd.jpg")
product_35.photos.attach(io: file, filename: "Short Blue Jean 3348-3" , content_type: "image/jpg")

puts "producto 36"
product_36 = Product.create(
  name: "Short Blue Jean - 3349",
  description: "Short Blue Jean para Dama",
  price: 30000,
  ref: 3349,
  availability: "Disponible",
  category_id: category_short_jean_blue.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_28.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_35.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_36.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_36.id, size_id: size_16.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3349/Short Blue Jean 3349-3.jpeg")
# product_36.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3349-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3349/Short Blue Jean 3349-2.jpeg")
# product_36.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3349-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3349/Short Blue Jean 3349-1.jpeg")
# product_36.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3349-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134013/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203349/Short_Blue_Jean_3349-1_ixgqif.jpg")
product_36.photos.attach(io: file, filename: "Short Blue Jean 3349-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134014/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203349/Short_Blue_Jean_3349-2_odco9d.jpg")
product_36.photos.attach(io: file, filename: "Short Blue Jean 3349-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134014/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203349/Short_Blue_Jean_3349-3_ykxkoc.jpg")
product_36.photos.attach(io: file, filename: "Short Blue Jean 3349-3" , content_type: "image/jpg")

puts "producto 37"
product_37 = Product.create(
  name: "Short Blue Jean - 3353",
  description: "Short Blue Jean para Dama",
  price: 30000,
  ref: 3353,
  availability: "Disponible",
  category_id: category_short_jean_blue.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_28.id, color_id: dark_grey.id)
ProductColor.create(product_id: product_37.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_36.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_37.id, size_id: size_6.id)
ProductSize.create(product_id: product_37.id, size_id: size_8.id)
ProductSize.create(product_id: product_37.id, size_id: size_10.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3353/Short Blue Jean 3353-3.jpeg")
# product_37.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3353-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3353/Short Blue Jean 3353-2.jpeg")
# product_37.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3353-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3353/Short Blue Jean 3353-1.jpeg")
# product_37.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3353-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134015/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203353/Short_Blue_Jean_3353-1_zaotnb.jpg")
product_37.photos.attach(io: file, filename: "Short Blue Jean 3353-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134016/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203353/Short_Blue_Jean_3353-2_itczu7.jpg")
product_37.photos.attach(io: file, filename: "Short Blue Jean 3353-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134016/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203353/Short_Blue_Jean_3353-3_afas7k.jpg")
product_37.photos.attach(io: file, filename: "Short Blue Jean 3353-3" , content_type: "image/jpg")

puts "producto 38"
product_38 = Product.create(
  name: "Short Blue Jean - 3354",
  description: "Short Blue Jean para Dama",
  price: 30000,
  ref: 3354,
  availability: "Disponible",
  category_id: category_short_jean_blue.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_28.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_37.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_38.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_38.id, size_id: size_10.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3354/Short Blue Jean 3354-3.jpeg")
# product_38.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3354-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3354/Short Blue Jean 3354-2.jpeg")
# product_38.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3354-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Blue Jean/Short Blue Jean - 3354/Short Blue Jean 3354-1.jpeg")
# product_38.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Blue Jean 3354-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134017/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203354/Short_Blue_Jean_3354-1_ku06sc.jpg")
product_38.photos.attach(io: file, filename: "Short Blue Jean 3354-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134018/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203354/Short_Blue_Jean_3354-2_yyctdg.jpg")
product_38.photos.attach(io: file, filename: "Short Blue Jean 3354-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134019/Dama/Short%20Blue%20Jean/Short%20Blue%20Jean%20-%203354/Short_Blue_Jean_3354-3_dxbm3y.jpg")
product_38.photos.attach(io: file, filename: "Short Blue Jean 3354-3" , content_type: "image/jpg")

puts "producto 39"
product_39 = Product.create(
  name: "Short Jean blanco - 3374",
  description: "Short Jean blanco para Dama",
  price: 30000,
  ref: 3374,
  availability: "Disponible",
  category_id: category_short_jean_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_28.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_37.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_39.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)
ProductColor.create(product_id: product_39.id, color_id: white.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_39.id, size_id: size_6.id)
ProductSize.create(product_id: product_39.id, size_id: size_8.id)
ProductSize.create(product_id: product_39.id, size_id: size_10.id)
ProductSize.create(product_id: product_39.id, size_id: size_14.id)
ProductSize.create(product_id: product_39.id, size_id: size_16.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short de Jean/Short blanco - 3374/Short blanco 3374-1.jpeg")
# product_39.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short blanco 3374-1.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short de Jean/Short blanco - 3374/Short blanco 3374-2.jpeg")
# product_39.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short blanco 3374-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short de Jean/Short blanco - 3374/Short blanco 3374-3.jpeg")
# product_39.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short blanco 3374-3.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134021/Dama/Short%20de%20Jean/Short%20blanco%20-%203374/Short_blanco_3374-1_hma2l1.jpg")
product_39.photos.attach(io: file, filename: "Short blanco 3374-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134021/Dama/Short%20de%20Jean/Short%20blanco%20-%203374/Short_blanco_3374-2_eiqkhu.jpg")
product_39.photos.attach(io: file, filename: "Short blanco 3374-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134022/Dama/Short%20de%20Jean/Short%20blanco%20-%203374/Short_blanco_3374-3_vkqney.jpg")
product_39.photos.attach(io: file, filename: "Short blanco 3374-3" , content_type: "image/jpg")

puts "producto 40"
product_40 = Product.create(
  name: "Short Jean gris - 3341",
  description: "Short Jean gris para Dama",
  price: 30000,
  ref: 3341,
  availability: "Disponible",
  category_id: category_short_jean_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
ProductColor.create(product_id: product_40.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_37.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_39.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_26.id, color_id: black.id)
# ProductColor.create(product_id: product_39.id, color_id: white.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_40.id, size_id: size_6.id)
ProductSize.create(product_id: product_40.id, size_id: size_8.id)
ProductSize.create(product_id: product_40.id, size_id: size_10.id)
ProductSize.create(product_id: product_40.id, size_id: size_12.id)
ProductSize.create(product_id: product_40.id, size_id: size_14.id)
ProductSize.create(product_id: product_40.id, size_id: size_16.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short de Jean/Short gris - 3341/Short gris 3341-3.jpeg")
# product_40.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short gris 3341-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short de Jean/Short gris - 3341/Short gris 3341-2.jpeg")
# product_40.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short gris 3341-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short de Jean/Short gris - 3341/Short gris 3341-1.jpeg")
# product_40.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short gris 3341-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134023/Dama/Short%20de%20Jean/Short%20gris%20-%203341/Short_gris_3341-1_zux6r1.jpg")
product_40.photos.attach(io: file, filename: "Short gris 3341-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134023/Dama/Short%20de%20Jean/Short%20gris%20-%203341/Short_gris_3341-2_hapaho.jpg")
product_40.photos.attach(io: file, filename: "Short gris 3341-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134024/Dama/Short%20de%20Jean/Short%20gris%20-%203341/Short_gris_3341-3_yqxgai.jpg")
product_40.photos.attach(io: file, filename: "Short gris 3341-3" , content_type: "image/jpg")

puts "producto 41"
product_41 = Product.create(
  name: "Short Jean negro - 3342",
  description: "Short Jean negro para Dama",
  price: 30000,
  ref: 3342,
  availability: "Disponible",
  category_id: category_short_jean_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_40.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_37.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_39.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
ProductColor.create(product_id: product_41.id, color_id: black.id)
# ProductColor.create(product_id: product_39.id, color_id: white.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_41.id, size_id: size_6.id)
ProductSize.create(product_id: product_41.id, size_id: size_8.id)
ProductSize.create(product_id: product_41.id, size_id: size_10.id)
ProductSize.create(product_id: product_41.id, size_id: size_12.id)
ProductSize.create(product_id: product_41.id, size_id: size_14.id)
ProductSize.create(product_id: product_41.id, size_id: size_16.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short de Jean/Short negro - 3342/Short negro 3342-3.jpeg")
# product_41.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short negro 3342-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short de Jean/Short negro - 3342/Short negro 3342-2.jpeg")
# product_41.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short negro 3342-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short de Jean/Short negro - 3342/Short negro 3342-1.jpeg")
# product_41.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short negro 3342-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134025/Dama/Short%20de%20Jean/Short%20negro%20-%203342/Short_negro_3342-1_boc4y8.jpg")
product_41.photos.attach(io: file, filename: "Short negro 3342-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134025/Dama/Short%20de%20Jean/Short%20negro%20-%203342/Short_negro_3342-2_ce7zkh.jpg")
product_41.photos.attach(io: file, filename: "Short negro 3342-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134026/Dama/Short%20de%20Jean/Short%20negro%20-%203342/Short_negro_3342-3_oqmjrj.jpg")
product_41.photos.attach(io: file, filename: "Short negro 3342-3" , content_type: "image/jpg")

puts "producto 42"
product_42 = Product.create(
  name: "Short Jean Tiro Alto - 3338",
  description: "Short Jean Tiro Alto para Dama",
  price: 30000,
  ref: 3338,
  availability: "Disponible",
  category_id: category_short_jean_tiro_alto_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_40.id, color_id: dark_grey.id)
ProductColor.create(product_id: product_42.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_39.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_41.id, color_id: black.id)
# ProductColor.create(product_id: product_39.id, color_id: white.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_42.id, size_id: size_8.id)
ProductSize.create(product_id: product_42.id, size_id: size_10.id)
ProductSize.create(product_id: product_42.id, size_id: size_12.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3338/Short Tiro Alto 3339-3.jpeg")
# product_42.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3339-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3338/Short Tiro Alto 3339-2.jpeg")
# product_42.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3339-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3338/Short Tiro Alto 3339-1.jpeg")
# product_42.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3339-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134027/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203338/Short_Tiro_Alto_3339-1_p7jdnj.jpg")
product_42.photos.attach(io: file, filename: "Short Tiro Alto 3339-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134027/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203338/Short_Tiro_Alto_3339-2_vumz8b.jpg")
product_42.photos.attach(io: file, filename: "Short Tiro Alto 3339-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134028/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203338/Short_Tiro_Alto_3339-3_dhx0sq.jpg")
product_42.photos.attach(io: file, filename: "Short Tiro Alto 3339-3" , content_type: "image/jpg")

puts "producto 43"
product_43 = Product.create(
  name: "Short Jean Tiro Alto - 3339",
  description: "Short Jean Tiro Alto para Dama",
  price: 30000,
  ref: 3339,
  availability: "Disponible",
  category_id: category_short_jean_tiro_alto_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_40.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_42.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_43.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_41.id, color_id: black.id)
# ProductColor.create(product_id: product_39.id, color_id: white.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_43.id, size_id: size_8.id)
ProductSize.create(product_id: product_43.id, size_id: size_10.id)
ProductSize.create(product_id: product_43.id, size_id: size_12.id)
ProductSize.create(product_id: product_43.id, size_id: size_14.id)
ProductSize.create(product_id: product_43.id, size_id: size_16.id)
ProductSize.create(product_id: product_43.id, size_id: size_18.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3339/Short Tiro Alto 3339-3.jpeg")
# product_43.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3339-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3339/Short Tiro Alto 3339-2.jpeg")
# product_43.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3339-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3339/Short Tiro Alto 3339-1.jpeg")
# product_43.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3339-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134028/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203339/Short_Tiro_Alto_3339-1_do5d3b.jpg")
product_43.photos.attach(io: file, filename: "Short Tiro Alto 3339-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134029/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203339/Short_Tiro_Alto_3339-2_bbdycl.jpg")
product_43.photos.attach(io: file, filename: "Short Tiro Alto 3339-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134030/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203339/Short_Tiro_Alto_3339-3_j4ed2u.jpg")
product_43.photos.attach(io: file, filename: "Short Tiro Alto 3339-3" , content_type: "image/jpg")

puts "producto 44"
product_44 = Product.create(
  name: "Short Jean Tiro Alto - 3366",
  description: "Short Jean Tiro Alto para Dama",
  price: 30000,
  ref: 3366,
  availability: "Disponible",
  category_id: category_short_jean_tiro_alto_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_40.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_42.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_44.id, color_id: medium_blue.id)
# ProductColor.create(product_id: product_29.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_41.id, color_id: black.id)
# ProductColor.create(product_id: product_39.id, color_id: white.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_44.id, size_id: size_8.id)
ProductSize.create(product_id: product_44.id, size_id: size_10.id)
ProductSize.create(product_id: product_44.id, size_id: size_12.id)
ProductSize.create(product_id: product_44.id, size_id: size_14.id)
ProductSize.create(product_id: product_44.id, size_id: size_16.id)
ProductSize.create(product_id: product_44.id, size_id: size_18.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3366/Short Tiro Alto 3366-3.jpeg")
# product_44.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3366-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3366/Short Tiro Alto 3366-2.jpeg")
# product_44.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3366-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3366/Short Tiro Alto 3366-1.jpeg")
# product_44.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3366-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134030/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203366/Short_Tiro_Alto_3366-1_relo2z.jpg")
product_44.photos.attach(io: file, filename: "Short Tiro Alto 3366-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134031/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203366/Short_Tiro_Alto_3366-2_twb2io.jpg")
product_44.photos.attach(io: file, filename: "Short Tiro Alto 3366-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134032/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203366/Short_Tiro_Alto_3366-3_nhqe4t.jpg")
product_44.photos.attach(io: file, filename: "Short Tiro Alto 3366-3" , content_type: "image/jpg")

puts "producto 45"
product_45 = Product.create(
  name: "Short Jean Tiro Alto - 3367",
  description: "Short Jean Tiro Alto para Dama",
  price: 30000,
  ref: 3367,
  availability: "Disponible",
  category_id: category_short_jean_tiro_alto_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_40.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_42.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_44.id, color_id: medium_blue.id)
ProductColor.create(product_id: product_45.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_41.id, color_id: black.id)
# ProductColor.create(product_id: product_39.id, color_id: white.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_45.id, size_id: size_8.id)
ProductSize.create(product_id: product_45.id, size_id: size_10.id)
ProductSize.create(product_id: product_45.id, size_id: size_12.id)
ProductSize.create(product_id: product_45.id, size_id: size_14.id)
ProductSize.create(product_id: product_45.id, size_id: size_16.id)
ProductSize.create(product_id: product_45.id, size_id: size_18.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3367/Short Tiro Alto 3367-3.jpeg")
# product_45.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3367-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3367/Short Tiro Alto 3367-2.jpeg")
# product_45.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3367-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3367/Short Tiro Alto 3367-1.jpeg")
# product_45.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3367-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134032/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203367/Short_Tiro_Alto_3367-1_gm1h7l.jpg")
product_45.photos.attach(io: file, filename: "Short Tiro Alto 3367-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134033/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203367/Short_Tiro_Alto_3367-2_mxbmvm.jpg")
product_45.photos.attach(io: file, filename: "Short Tiro Alto 3367-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134033/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203367/Short_Tiro_Alto_3367-3_xsjknw.jpg")
product_45.photos.attach(io: file, filename: "Short Tiro Alto 3367-3" , content_type: "image/jpg")

puts "producto 46"
product_46 = Product.create(
  name: "Short Jean Tiro Alto - 3368",
  description: "Short Jean Tiro Alto para Dama",
  price: 30000,
  ref: 3368,
  availability: "Disponible",
  category_id: category_short_jean_tiro_alto_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_40.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_42.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_44.id, color_id: medium_blue.id)
ProductColor.create(product_id: product_46.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_41.id, color_id: black.id)
# ProductColor.create(product_id: product_39.id, color_id: white.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_46.id, size_id: size_8.id)
ProductSize.create(product_id: product_46.id, size_id: size_10.id)
ProductSize.create(product_id: product_46.id, size_id: size_12.id)
ProductSize.create(product_id: product_46.id, size_id: size_14.id)
ProductSize.create(product_id: product_46.id, size_id: size_16.id)
ProductSize.create(product_id: product_46.id, size_id: size_18.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3368/Short Tiro Alto 3368-3.jpeg")
# product_46.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3368-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3368/Short Tiro Alto 3368-2.jpeg")
# product_46.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3368-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3368/Short Tiro Alto 3368-1.jpeg")
# product_46.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3368-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134034/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203368/Short_Tiro_Alto_3368-1_r5ue5e.jpg")
product_46.photos.attach(io: file, filename: "Short Tiro Alto 3368-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134034/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203368/Short_Tiro_Alto_3368-2_xis7y7.jpg")
product_46.photos.attach(io: file, filename: "Short Tiro Alto 3368-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134035/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203368/Short_Tiro_Alto_3368-3_mgz4cd.jpg")
product_46.photos.attach(io: file, filename: "Short Tiro Alto 3368-3" , content_type: "image/jpg")

puts "producto 47"
product_47 = Product.create(
  name: "Short Jean Tiro Alto - 3372",
  description: "Short Jean Tiro Alto para Dama",
  price: 30000,
  ref: 3372,
  availability: "Disponible",
  category_id: category_short_jean_tiro_alto_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_40.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_42.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_44.id, color_id: medium_blue.id)
ProductColor.create(product_id: product_47.id, color_id: light_blue.id)
# ProductColor.create(product_id: product_41.id, color_id: black.id)
# ProductColor.create(product_id: product_39.id, color_id: white.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_47.id, size_id: size_8.id)
ProductSize.create(product_id: product_47.id, size_id: size_10.id)
ProductSize.create(product_id: product_47.id, size_id: size_12.id)
ProductSize.create(product_id: product_47.id, size_id: size_14.id)
ProductSize.create(product_id: product_47.id, size_id: size_16.id)
ProductSize.create(product_id: product_47.id, size_id: size_18.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3372/Short Tiro Alto 3372-3.jpeg")
# product_47.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3372-3.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3372/Short Tiro Alto 3372-2.jpeg")
# product_47.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3372-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Short Tiro Alto/Short de Jean Tiro Alto - 3372/Short Tiro Alto 3372-1.jpeg")
# product_47.photos.attach(io: URI.open(uploaded_image['url']), filename: "Short Tiro Alto 3372-1.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134036/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203372/Short_Tiro_Alto_3372-1_riqs5w.jpg")
product_47.photos.attach(io: file, filename: "Short Tiro Alto 3372-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134036/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203372/Short_Tiro_Alto_3372-2_ramtcm.jpg")
product_47.photos.attach(io: file, filename: "Short Tiro Alto 3372-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134037/Dama/Short%20Tiro%20Alto/Short%20de%20Jean%20Tiro%20Alto%20-%203372/Short_Tiro_Alto_3372-3_xlngov.jpg")
product_47.photos.attach(io: file, filename: "Short Tiro Alto 3372-3" , content_type: "image/jpg")

puts "producto 48"
product_48 = Product.create(
  name: "Torero- 1802",
  description: "Torero para Dama",
  price: 30000,
  ref: 1802,
  availability: "Disponible",
  category_id: category_torero_lady.id,
  gender_id: lady.id
)

# # Asocia los colores con el producto
# ProductColor.create(product_id: product_27.id, color_id: light_grey.id)
# ProductColor.create(product_id: product_40.id, color_id: dark_grey.id)
# ProductColor.create(product_id: product_42.id, color_id: dark_blue.id)
# ProductColor.create(product_id: product_44.id, color_id: medium_blue.id)
ProductColor.create(product_id: product_48.id, color_id: pink.id)
ProductColor.create(product_id: product_48.id, color_id: yellow.id)
ProductColor.create(product_id: product_48.id, color_id: black.id)

# # Asocia los tallas con el producto
ProductSize.create(product_id: product_48.id, size_id: size_8.id)
ProductSize.create(product_id: product_48.id, size_id: size_10.id)
ProductSize.create(product_id: product_48.id, size_id: size_12.id)
ProductSize.create(product_id: product_48.id, size_id: size_14.id)
ProductSize.create(product_id: product_48.id, size_id: size_16.id)
ProductSize.create(product_id: product_48.id, size_id: size_18.id)
ProductSize.create(product_id: product_48.id, size_id: size_20.id)

# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Torero/Torero - 1802/Torero 1802-1.jpeg")
# product_48.photos.attach(io: URI.open(uploaded_image['url']), filename: "Torero 1802-1.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Torero/Torero - 1802/Torero 1802-2.jpeg")
# product_48.photos.attach(io: URI.open(uploaded_image['url']), filename: "Torero 1802-2.jpeg", content_type: "image/jpeg")
# uploaded_image = Cloudinary::Uploader.upload("/root/code/dvaron2099/tendencias_y_diseños/app/assets/images/Dama/Torero/Torero - 1802/Torero 1802-3.jpeg")
# product_48.photos.attach(io: URI.open(uploaded_image['url']), filename: "Torero 1802-3.jpeg", content_type: "image/jpeg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134038/Dama/Torero/Torero%20-%201802/Torero_1802-1_dnbcnu.jpg")
product_48.photos.attach(io: file, filename: "Torero 1802-1" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134038/Dama/Torero/Torero%20-%201802/Torero_1802-2_qq01na.jpg")
product_48.photos.attach(io: file, filename: "Torero 1802-2" , content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/drsm6hgnw/image/upload/v1694134039/Dama/Torero/Torero%20-%201802/Torero_1802-3_xys11w.jpg")
product_48.photos.attach(io: file, filename: "Torero 1802-3" , content_type: "image/jpg")

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
