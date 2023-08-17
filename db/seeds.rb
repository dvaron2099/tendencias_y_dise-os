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
puts "Creando Categorias"
puts "Jean"
category_jean = Category.create(category_type: "Jean")
puts "Short de drill"
category_short_drill = Category.create(category_type: "Short de drill")
puts "Torero de drill"
category_torero_drill = Category.create(category_type: "Torero de drill")
puts "Pantalon de drill"
category_pants_drill = Category.create(category_type: "Pantalon de drill")
puts "Short de jean"
category_short_jean = Category.create(category_type: "Short de jean")
puts "Falda Short"
category_skirt_short = Category.create(category_type: "Falda Short")
puts "Bermuda de drill"
category_short_men = Category.create(category_type: "Bermuda de drill")
puts ""
puts ""
puts "Creando Generos"
puts "Caballero"
gentleman = Gender.create(name: "Caballero")
puts "Dama"
lady = Gender.create(name: "Dama")
puts ""
puts ""
puts "Creando Colores"
puts "Gris"
grey = Color.create(
  name: "Gris",
  hex_code: "#2b2527"
)
puts "Azul claro"
light_blue = Color.create(
  name: "Azul claro",
  hex_code: "#139ad3"
)
puts "Negro"
black = Color.create(
  name: "Negro",
  hex_code: "#0a0b0f"
)
puts "Blanco"
white = Color.create(
  name: "Blanco",
  hex_code: "#ffffff"
)
puts "Morado"
purple = Color.create(
  name: "Morado",
  hex_code: "#c0afcf"
)
puts "Verde"
green = Color.create(
  name: "Verde",
  hex_code: "#067f4c"
)
puts "Azul oscuro"
dark_blue = Color.create(
  name: "Azul oscuro",
  hex_code: "#174a8b"
)
puts "Rosado"
pink = Color.create(
  name: "Rosado",
  hex_code: "#fab9ca"
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
puts ""
puts ""
puts "Creando Productos"

# Productos para Caballero
puts "producto 1"
product_1 = Product.create(
  name: "Jean Clásico Caballero",
  description: "Jean de estilo clásico para caballero",
  price: 30000,
  stock: 15,
  availability: true,
  gender_id: gentleman.id,
  category_id: category_jean.id
)

# Asocia los colores con el producto
ProductColor.create(product_id: product_1.id, color_id: grey.id)
ProductColor.create(product_id: product_1.id, color_id: light_blue.id)

# Asocia los tallas con el producto
ProductSize.create(product_id: product_1.id, size_id: size_28.id)
ProductSize.create(product_id: product_1.id, size_id: size_30.id)
ProductSize.create(product_id: product_1.id, size_id: size_32.id)
ProductSize.create(product_id: product_1.id, size_id: size_34.id)
ProductSize.create(product_id: product_1.id, size_id: size_36.id)
ProductSize.create(product_id: product_1.id, size_id: size_38.id)


file = URI.open("https://i.pinimg.com/236x/16/99/2d/16992d876b8ffa2bfa77c7fcfd7c2917.jpg")
product_1.photos.attach(io: file, filename: "16992d876b8ffa2bfa77c7fcfd7c2917.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/736x/1d/b8/eb/1db8ebd41578dd7a55a5bf9082fe0fd4.jpg")
product_1.photos.attach(io: file, filename: "1db8ebd41578dd7a55a5bf9082fe0fd4.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/236x/d9/da/21/d9da21a059abeb8939d239fbf532d6a8--stretch-jeans-skinny-fit.jpg")
product_1.photos.attach(io: file, filename: "d9da21a059abeb8939d239fbf532d6a8--stretch-jeans-skinny-fit.jpg" , content_type: "image/jpg")
puts "producto 2"
product_2 = Product.create(
  name: "Bermuda de Verano Caballero",
  description: "Bermuda ideal para el verano para caballero",
  price: 25000,
  stock: 8,
  availability: true,
  gender_id: gentleman.id,
  category_id: category_short_men.id
)

ProductColor.create(product_id: product_2.id, color_id: black.id)
ProductColor.create(product_id: product_2.id, color_id: white.id)

ProductSize.create(product_id: product_2.id, size_id: size_28.id)
ProductSize.create(product_id: product_2.id, size_id: size_30.id)
ProductSize.create(product_id: product_2.id, size_id: size_32.id)
ProductSize.create(product_id: product_2.id, size_id: size_34.id)
ProductSize.create(product_id: product_2.id, size_id: size_36.id)
ProductSize.create(product_id: product_2.id, size_id: size_38.id)

file = URI.open("https://i.pinimg.com/originals/25/58/8b/25588bfb24ab6e1a7eda6363db3f90c6.png")
product_2.photos.attach(io: file, filename: "25588bfb24ab6e1a7eda6363db3f90c6.png" , content_type: "image/png")

file = URI.open("https://i.pinimg.com/550x/fd/76/62/fd766221828a3f134cff94657ce9e1a6.jpg")
product_2.photos.attach(io: file, filename: "fd766221828a3f134cff94657ce9e1a6.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/736x/43/a1/6f/43a16fdd511fd71969c0bbc44ddea91c.jpg")
product_2.photos.attach(io: file, filename: "43a16fdd511fd71969c0bbc44ddea91c.jpg" , content_type: "image/jpg")
puts "producto 3"
product_3 = Product.create(
  name: "Bermuda de Drill Caballero",
  description: "Bermuda de drill para caballero",
  price: 30000,
  stock: 10,
  availability: true,
  gender_id: gentleman.id,
  category_id: category_short_men.id
)

ProductColor.create(product_id: product_3.id, color_id: black.id)
ProductColor.create(product_id: product_3.id, color_id: grey.id)

ProductSize.create(product_id: product_3.id, size_id: size_28.id)
ProductSize.create(product_id: product_3.id, size_id: size_30.id)
ProductSize.create(product_id: product_3.id, size_id: size_32.id)
ProductSize.create(product_id: product_3.id, size_id: size_34.id)

file = URI.open("https://i.pinimg.com/originals/c3/d6/df/c3d6df50e6ea4b0cee31fdf4d8e74345.jpg")
product_3.photos.attach(io: file, filename: "c3d6df50e6ea4b0cee31fdf4d8e74345.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/736x/39/03/93/3903937887fd775fae4a895e85947d1a.jpg")
product_3.photos.attach(io: file, filename: "3903937887fd775fae4a895e85947d1a.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/550x/fd/76/62/fd766221828a3f134cff94657ce9e1a6.jpg")
product_3.photos.attach(io: file, filename: "fd766221828a3f134cff94657ce9e1a6.jpg" , content_type: "image/jpg")

# Productos para Dama
puts "producto 4"
product_4 = Product.create(
  name: "Falda Short Elegante Dama",
  description: "Falda Short Elegante para fiestas para dama",
  price: 35000,
  stock: 0,
  availability: false,
  gender_id: lady.id,
  category_id: category_skirt_short.id
)

ProductColor.create(product_id: product_4.id, color_id: purple.id)
ProductColor.create(product_id: product_4.id, color_id: green.id)

ProductSize.create(product_id: product_4.id, size_id: size_6.id)
ProductSize.create(product_id: product_4.id, size_id: size_8.id)
ProductSize.create(product_id: product_4.id, size_id: size_10.id)
ProductSize.create(product_id: product_4.id, size_id: size_12.id)
ProductSize.create(product_id: product_4.id, size_id: size_14.id)
ProductSize.create(product_id: product_4.id, size_id: size_16.id)

file = URI.open("https://i.pinimg.com/736x/98/7d/40/987d407cb31eabd619b3e90982b2f0ec.jpg")
product_4.photos.attach(io: file, filename: "987d407cb31eabd619b3e90982b2f0ec.jpg" , content_type: "image/jpg")

file = URI.open("https://jeansdemodacol.com/wp-content/uploads/2021/03/b-716-morada-01.jpg")
product_4.photos.attach(io: file, filename: "b-716-morada-01.jpg" , content_type: "image/jpg")
puts "producto 5"
product_5 = Product.create(
  name: "Bermuda Drill Dama",
  description: "Bermuda de drill para dama",
  price: 30000,
  stock: 5,
  availability: true,
  gender_id: lady.id,
  category_id: category_short_drill.id
)

ProductColor.create(product_id: product_5.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_5.id, color_id: black.id)

ProductSize.create(product_id: product_5.id, size_id: size_18.id)
ProductSize.create(product_id: product_5.id, size_id: size_20.id)
ProductSize.create(product_id: product_5.id, size_id: size_22.id)
ProductSize.create(product_id: product_5.id, size_id: size_24.id)

file = URI.open("https://i.pinimg.com/236x/ee/7a/5e/ee7a5eb7909d316640b356d86f44f571.jpg")
product_5.photos.attach(io: file, filename: "ee7a5eb7909d316640b356d86f44f571.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/originals/af/5f/14/af5f147beb98101430f77c07419cbb79.jpg")
product_5.photos.attach(io: file, filename: "af5f147beb98101430f77c07419cbb79.jpg" , content_type: "image/jpg")

# Productos para Caballero
puts "producto 6"
product_6 = Product.create(
  name: "Jean Moderno Caballero",
  description: "Jean de estilo moderno para caballero",
  price: 30000,
  stock: 20,
  availability: true,
  gender_id: gentleman.id,
  category_id: category_jean.id
)

ProductColor.create(product_id: product_6.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_6.id, color_id: black.id)


ProductSize.create(product_id: product_6.id, size_id: size_28.id)
ProductSize.create(product_id: product_6.id, size_id: size_30.id)
ProductSize.create(product_id: product_6.id, size_id: size_32.id)
ProductSize.create(product_id: product_6.id, size_id: size_34.id)
ProductSize.create(product_id: product_6.id, size_id: size_36.id)
ProductSize.create(product_id: product_6.id, size_id: size_38.id)

file = URI.open("https://i.pinimg.com/originals/c6/a5/ce/c6a5ce7fc82c12ca4a0e165d1694144d.jpg")
product_6.photos.attach(io: file, filename: "c6a5ce7fc82c12ca4a0e165d1694144d.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/1200x/26/73/d3/2673d3dacb2ba43582b3456e58620d7d.jpg")
product_6.photos.attach(io: file, filename: "2673d3dacb2ba43582b3456e58620d7d.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/564x/fe/97/c7/fe97c796b44e461d732d7c45a4877d7e.jpg")
product_6.photos.attach(io: file, filename: "fe97c796b44e461d732d7c45a4877d7e.jpg" , content_type: "image/jpg")
puts "producto 7"
product_7 = Product.create(
  name: "Bermuda Deportivo Caballero",
  description: "Bermuda deportivo para caballero",
  price: 25000,
  stock: 12,
  availability: true,
  gender_id: gentleman.id,
  category_id: category_short_men.id
)

ProductColor.create(product_id: product_7.id, color_id: grey.id)
ProductColor.create(product_id: product_7.id, color_id: green.id)


ProductSize.create(product_id: product_7.id, size_id: size_28.id)
ProductSize.create(product_id: product_7.id, size_id: size_30.id)
ProductSize.create(product_id: product_7.id, size_id: size_32.id)
ProductSize.create(product_id: product_7.id, size_id: size_34.id)
ProductSize.create(product_id: product_7.id, size_id: size_36.id)
ProductSize.create(product_id: product_7.id, size_id: size_38.id)

file = URI.open("https://i.pinimg.com/474x/36/fd/80/36fd80c9aac1b94560cac6940c73992e.jpg")
product_7.photos.attach(io: file, filename: "36fd80c9aac1b94560cac6940c73992e.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/736x/14/54/f1/1454f1c63887823a1cc698051ab28744.jpg")
product_7.photos.attach(io: file, filename: "1454f1c63887823a1cc698051ab28744.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/736x/68/ee/a9/68eea98b42e29cdfa6027b887135c1f6.jpg")
product_7.photos.attach(io: file, filename: "68eea98b42e29cdfa6027b887135c1f6.jpg" , content_type: "image/jpg")
puts "producto 8"
product_8 = Product.create(
  name: "Bermuda de Drill Caballero",
  description: "Bermuda de drill para caballero",
  price: 30000,
  stock: 8,
  availability: true,
  gender_id: gentleman.id,
  category_id: category_short_men.id
)

ProductColor.create(product_id: product_8.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_8.id, color_id: grey.id)

ProductSize.create(product_id: product_8.id, size_id: size_18.id)
ProductSize.create(product_id: product_8.id, size_id: size_20.id)
ProductSize.create(product_id: product_8.id, size_id: size_22.id)
ProductSize.create(product_id: product_8.id, size_id: size_24.id)

file = URI.open("https://i.pinimg.com/474x/74/77/05/747705634cf24fdc48ecedd7b4de6edf.jpg")
product_8.photos.attach(io: file, filename: "747705634cf24fdc48ecedd7b4de6edf.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/736x/35/36/cb/3536cbeefda65939527e394dbf26b2f8.jpg")
product_8.photos.attach(io: file, filename: "3536cbeefda65939527e394dbf26b2f8.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/736x/a9/2e/db/a92edb90a5c46b1061a3fc074121b2ac.jpg")
product_8.photos.attach(io: file, filename: "a92edb90a5c46b1061a3fc074121b2ac.jpg" , content_type: "image/jpg")

# Productos para Dama
puts "producto 9"
product_9 = Product.create(
  name: "Falda Short Casual Dama",
  description: "Falda short casual para dama",
  price: 35000,
  stock: 15,
  availability: true,
  gender_id: lady.id,
  category_id: category_skirt_short.id
)

ProductColor.create(product_id: product_9.id, color_id: light_blue.id)
ProductColor.create(product_id: product_9.id, color_id: white.id)

ProductSize.create(product_id: product_9.id, size_id: size_6.id)
ProductSize.create(product_id: product_9.id, size_id: size_8.id)
ProductSize.create(product_id: product_9.id, size_id: size_10.id)
ProductSize.create(product_id: product_9.id, size_id: size_12.id)
ProductSize.create(product_id: product_9.id, size_id: size_14.id)
ProductSize.create(product_id: product_9.id, size_id: size_16.id)

file = URI.open("https://i.pinimg.com/originals/0b/2c/86/0b2c86e4a452c00371139b2a5fa7ba20.jpg")
product_9.photos.attach(io: file, filename: "0b2c86e4a452c00371139b2a5fa7ba20.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/736x/61/5b/bc/615bbc093179d35a89c40fbeaec9b355.jpg")
product_9.photos.attach(io: file, filename: "615bbc093179d35a89c40fbeaec9b355.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/originals/7b/91/1f/7b911f1c3c4507d18d14e802c6322d62.jpg")
product_9.photos.attach(io: file, filename: "7b911f1c3c4507d18d14e802c6322d62.jpg" , content_type: "image/jpg")
puts "producto 10"
product_10 = Product.create(
  name: "Bermuda Drill Dama",
  description: "Bermuda de drill para dama",
  price: 30000,
  stock: 0,
  availability: false,
  gender_id: lady.id,
  category_id: category_short_drill.id
)

ProductColor.create(product_id: product_10.id, color_id: black.id)
ProductColor.create(product_id: product_10.id, color_id: grey.id)

ProductSize.create(product_id: product_10.id, size_id: size_18.id)
ProductSize.create(product_id: product_10.id, size_id: size_20.id)
ProductSize.create(product_id: product_10.id, size_id: size_22.id)
ProductSize.create(product_id: product_10.id, size_id: size_24.id)

file = URI.open("https://i.pinimg.com/550x/69/1d/97/691d97d0c691a91af6d174a3b738742c.jpg")
product_10.photos.attach(io: file, filename: "691d97d0c691a91af6d174a3b738742c.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/550x/72/e3/74/72e374eb4f3cf9c488ebd3d4bdb4b2b3.jpg")
product_10.photos.attach(io: file, filename: "72e374eb4f3cf9c488ebd3d4bdb4b2b3.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/550x/8f/69/37/8f69375524126198e7369861a504511c.jpg")
product_10.photos.attach(io: file, filename: "8f69375524126198e7369861a504511c.jpg" , content_type: "image/jpg")
puts "producto 11"
product_11 = Product.create(
  name: "Jean Clásico Caballero",
  description: "Jean de estilo clásico para caballero",
  price: 30000,
  stock: 20,
  availability: true,
  gender_id: gentleman.id,
  category_id: category_jean.id
)

ProductColor.create(product_id: product_11.id, color_id: dark_blue.id)
ProductColor.create(product_id: product_11.id, color_id: black.id)


ProductSize.create(product_id: product_11.id, size_id: size_28.id)
ProductSize.create(product_id: product_11.id, size_id: size_30.id)
ProductSize.create(product_id: product_11.id, size_id: size_32.id)
ProductSize.create(product_id: product_11.id, size_id: size_34.id)
ProductSize.create(product_id: product_11.id, size_id: size_36.id)
ProductSize.create(product_id: product_11.id, size_id: size_38.id)

file = URI.open("https://i.pinimg.com/736x/7e/cf/8f/7ecf8f7f4bd7cd705e3871d4efd6075a.jpg")
product_11.photos.attach(io: file, filename: "7ecf8f7f4bd7cd705e3871d4efd6075a.jpg" , content_type: "image/jpg")
puts "producto 12"
product_12 = Product.create(
  name: "Bermuda Deportiva Caballero",
  description: "Bermuda deportiva para caballero",
  price: 25000,
  stock: 12,
  availability: true,
  gender_id: gentleman.id,
  category_id: category_short_men.id
)

ProductColor.create(product_id: product_12.id, color_id: grey.id)
ProductColor.create(product_id: product_12.id, color_id: green.id)


ProductSize.create(product_id: product_12.id, size_id: size_28.id)
ProductSize.create(product_id: product_12.id, size_id: size_30.id)
ProductSize.create(product_id: product_12.id, size_id: size_32.id)
ProductSize.create(product_id: product_12.id, size_id: size_34.id)
ProductSize.create(product_id: product_12.id, size_id: size_36.id)
ProductSize.create(product_id: product_12.id, size_id: size_38.id)

file = URI.open("https://i.pinimg.com/564x/5c/c3/50/5cc350835d41c42b380964aae6945152.jpg")
product_12.photos.attach(io: file, filename: "5cc350835d41c42b380964aae6945152.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/236x/5e/91/ca/5e91cad4acc870fdeb1e7c0728f09991.jpg")
product_12.photos.attach(io: file, filename: "5e91cad4acc870fdeb1e7c0728f09991.jpg" , content_type: "image/jpg")
puts "producto 13"
product_13 = Product.create(
  name: "Bermuda de Drill Caballero",
  description: "Bermuda de drill para caballero",
  price: 30000,
  stock: 8,
  availability: true,
  gender_id: gentleman.id,
  category_id: category_short_men.id
)

ProductColor.create(product_id: product_13.id, color_id: grey.id)
ProductColor.create(product_id: product_13.id, color_id: dark_blue.id)


ProductSize.create(product_id: product_13.id, size_id: size_28.id)
ProductSize.create(product_id: product_13.id, size_id: size_30.id)
ProductSize.create(product_id: product_13.id, size_id: size_32.id)
ProductSize.create(product_id: product_13.id, size_id: size_34.id)
ProductSize.create(product_id: product_13.id, size_id: size_36.id)
ProductSize.create(product_id: product_13.id, size_id: size_38.id)

# Productos para Dama
puts "producto 14"
product_14 = Product.create(
  name: "Falda Short Elegante Dama",
  description: "Falda super elegante para dama",
  price: 35000,
  stock: 15,
  availability: true,
  gender_id: lady.id,
  category_id: category_skirt_short.id
)

ProductColor.create(product_id: product_14.id, color_id: purple.id)
ProductColor.create(product_id: product_14.id, color_id: black.id)

ProductSize.create(product_id: product_14.id, size_id: size_6.id)
ProductSize.create(product_id: product_14.id, size_id: size_8.id)
ProductSize.create(product_id: product_14.id, size_id: size_10.id)
ProductSize.create(product_id: product_14.id, size_id: size_12.id)
ProductSize.create(product_id: product_14.id, size_id: size_14.id)
ProductSize.create(product_id: product_14.id, size_id: size_16.id)

file = URI.open("https://i.pinimg.com/736x/98/7d/40/987d407cb31eabd619b3e90982b2f0ec.jpg")
product_14.photos.attach(io: file, filename: "987d407cb31eabd619b3e90982b2f0ec.jpg" , content_type: "image/jpg")

file = URI.open("https://jeansdemodacol.com/wp-content/uploads/2021/03/b-716-morada-01.jpg")
product_14.photos.attach(io: file, filename: "b-716-morada-01.jpg" , content_type: "image/jpg")
puts "producto 15"
product_15 = Product.create(
  name: "Bermuda Drill Dama",
  description: "Bermuda de drill para dama",
  price: 30000,
  stock: 0,
  availability: false,
  gender_id: lady.id,
  category_id: category_short_drill.id
)

ProductColor.create(product_id: product_15.id, color_id: white.id)
ProductColor.create(product_id: product_15.id, color_id: grey.id)


ProductSize.create(product_id: product_15.id, size_id: size_28.id)
ProductSize.create(product_id: product_15.id, size_id: size_30.id)
ProductSize.create(product_id: product_15.id, size_id: size_32.id)
ProductSize.create(product_id: product_15.id, size_id: size_34.id)
ProductSize.create(product_id: product_15.id, size_id: size_36.id)
ProductSize.create(product_id: product_15.id, size_id: size_38.id)

file = URI.open("https://i.pinimg.com/736x/fa/60/fe/fa60fe940fdf00dcbd76d8688945972d.jpg")
product_15.photos.attach(io: file, filename: "fa60fe940fdf00dcbd76d8688945972d.jpg" , content_type: "image/jpg")
puts "producto 16"
product_16 = Product.create(
  name: "Short de Jean Dama",
  description: "Short de jean para dama",
  price: 25000,
  stock: 10,
  availability: true,
  gender_id: lady.id,
  category_id: category_short_jean.id
)

ProductColor.create(product_id: product_16.id, color_id: light_blue.id)
ProductColor.create(product_id: product_16.id, color_id: dark_blue.id)

ProductSize.create(product_id: product_16.id, size_id: size_6.id)
ProductSize.create(product_id: product_16.id, size_id: size_8.id)
ProductSize.create(product_id: product_16.id, size_id: size_10.id)
ProductSize.create(product_id: product_16.id, size_id: size_12.id)
ProductSize.create(product_id: product_16.id, size_id: size_14.id)
ProductSize.create(product_id: product_16.id, size_id: size_16.id)

file = URI.open("https://i.pinimg.com/550x/e5/4f/93/e54f93e01bc23c1513a310cb25d1affe.jpg")
product_16.photos.attach(io: file, filename: "e54f93e01bc23c1513a310cb25d1affe.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/736x/1a/22/3c/1a223cbf7cf3ef34bcf8cb21f47afc54--kardashian-jenner-kylie-jenner.jpg")
product_16.photos.attach(io: file, filename: "1a223cbf7cf3ef34bcf8cb21f47afc54--kardashian-jenner-kylie-jenner.jpg" , content_type: "image/jpg")
puts "producto 17"
product_17 = Product.create(
  name: "Pantalón de Drill Dama",
  description: "Pantalón de drill para dama",
  price: 35000,
  stock: 18,
  availability: true,
  gender_id: lady.id,
  category_id: category_pants_drill.id
)

ProductColor.create(product_id: product_17.id, color_id: green.id)
ProductColor.create(product_id: product_17.id, color_id: black.id)

ProductSize.create(product_id: product_17.id, size_id: size_6.id)
ProductSize.create(product_id: product_17.id, size_id: size_8.id)
ProductSize.create(product_id: product_17.id, size_id: size_10.id)
ProductSize.create(product_id: product_17.id, size_id: size_12.id)
ProductSize.create(product_id: product_17.id, size_id: size_14.id)
ProductSize.create(product_id: product_17.id, size_id: size_16.id)

file = URI.open("https://www.dwork.com.co/wp-content/uploads/2021/07/RPDCD-1.jpg")
product_17.photos.attach(io: file, filename: "RPDCD-1.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/564x/95/46/89/954689ea56c5fc529047907a7f9a0b5b.jpg")
product_17.photos.attach(io: file, filename: "954689ea56c5fc529047907a7f9a0b5b.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/originals/82/e6/94/82e69459dd10c6566a3cad75a6ac36bb.jpg")
product_17.photos.attach(io: file, filename: "82e69459dd10c6566a3cad75a6ac36bb.jpg" , content_type: "image/jpg")
puts "producto 18"
product_18 = Product.create(
  name: "Falda Short Dama",
  description: "Falda short para dama",
  price: 30000,
  stock: 14,
  availability: true,
  gender_id: lady.id,
  category_id: category_skirt_short.id
)

ProductColor.create(product_id: product_18.id, color_id: white.id)
ProductColor.create(product_id: product_18.id, color_id: grey.id)

ProductSize.create(product_id: product_18.id, size_id: size_6.id)
ProductSize.create(product_id: product_18.id, size_id: size_8.id)
ProductSize.create(product_id: product_18.id, size_id: size_10.id)
ProductSize.create(product_id: product_18.id, size_id: size_12.id)
ProductSize.create(product_id: product_18.id, size_id: size_14.id)
ProductSize.create(product_id: product_18.id, size_id: size_16.id)

file = URI.open("https://i.pinimg.com/736x/61/5b/bc/615bbc093179d35a89c40fbeaec9b355.jpg")
product_18.photos.attach(io: file, filename: "615bbc093179d35a89c40fbeaec9b355.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/236x/a7/04/79/a7047976ea9d5bb4abcfbc2eee87b706--teen-outfits-fashion-outfits.jpg")
product_18.photos.attach(io: file, filename: "a7047976ea9d5bb4abcfbc2eee87b706--teen-outfits-fashion-outfits.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/236x/71/cd/28/71cd2841577320ae8016ea8fac0dc9a7--woman-clothing-casual.jpg")
product_18.photos.attach(io: file, filename: "71cd2841577320ae8016ea8fac0dc9a7--woman-clothing-casual.jpg" , content_type: "image/jpg")
puts "producto 19"
product_19 = Product.create(
  name: "Bermuda de Drill Dama",
  description: "Bermuda de drill para dama",
  price: 25000,
  stock: 22,
  availability: true,
  gender_id: lady.id,
  category_id: category_short_drill.id
)

ProductColor.create(product_id: product_19.id, color_id: black.id)
ProductColor.create(product_id: product_19.id, color_id: dark_blue.id)

ProductSize.create(product_id: product_19.id, size_id: size_6.id)
ProductSize.create(product_id: product_19.id, size_id: size_8.id)
ProductSize.create(product_id: product_19.id, size_id: size_10.id)
ProductSize.create(product_id: product_19.id, size_id: size_12.id)
ProductSize.create(product_id: product_19.id, size_id: size_14.id)
ProductSize.create(product_id: product_19.id, size_id: size_16.id)

file = URI.open("https://i.pinimg.com/236x/ee/7a/5e/ee7a5eb7909d316640b356d86f44f571.jpg")
product_19.photos.attach(io: file, filename: "ee7a5eb7909d316640b356d86f44f571.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/222x/d8/39/79/d839791291dcea02da8c3b48cc587baa.jpg")
product_19.photos.attach(io: file, filename: "d839791291dcea02da8c3b48cc587baa.jpg" , content_type: "image/jpg")

file = URI.open("https://i.pinimg.com/236x/dd/19/6e/dd196e43bb5167d75a2d7ad21a42cab6--bermuda-pin.jpg")
product_19.photos.attach(io: file, filename: "dd196e43bb5167d75a2d7ad21a42cab6--bermuda-pin.jpg" , content_type: "image/jpg")
puts "producto 20"
product_20 = Product.create(
  name: "Falda Short Corto Dama",
  description: "Falda short corto para dama",
  price: 30000,
  stock: 12,
  availability: true,
  gender_id: lady.id,
  category_id: category_skirt_short.id
)

ProductColor.create(product_id: product_20.id, color_id: pink.id)
ProductColor.create(product_id: product_20.id, color_id: purple.id)

ProductSize.create(product_id: product_20.id, size_id: size_6.id)
ProductSize.create(product_id: product_20.id, size_id: size_8.id)
ProductSize.create(product_id: product_20.id, size_id: size_10.id)
ProductSize.create(product_id: product_20.id, size_id: size_12.id)
ProductSize.create(product_id: product_20.id, size_id: size_14.id)
ProductSize.create(product_id: product_20.id, size_id: size_16.id)
puts "producto 21"
product_21 = Product.create(
  name: "Torero Dama",
  description: "Torero para dama",
  price: 25000,
  stock: 22,
  availability: true,
  gender_id: lady.id,
  category_id: category_torero_drill.id
)

ProductColor.create(product_id: product_21.id, color_id: pink.id)
ProductColor.create(product_id: product_21.id, color_id: purple.id)

ProductSize.create(product_id: product_21.id, size_id: size_6.id)
ProductSize.create(product_id: product_21.id, size_id: size_8.id)
ProductSize.create(product_id: product_21.id, size_id: size_10.id)
ProductSize.create(product_id: product_21.id, size_id: size_12.id)
ProductSize.create(product_id: product_21.id, size_id: size_14.id)
ProductSize.create(product_id: product_21.id, size_id: size_16.id)

file = URI.open("https://i.pinimg.com/736x/94/27/20/942720d428b5fe48ef669d6f3b84d99e.jpg")
product_21.photos.attach(io: file, filename: "942720d428b5fe48ef669d6f3b84d99e.jpg" , content_type: "image/jpg")

puts "Productos creados exitosamente"
