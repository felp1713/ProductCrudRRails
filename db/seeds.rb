# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# Limpa todos os produtos existentes antes de recriar (opcional, para evitar duplicações)
Product.destroy_all

# Cria alguns produtos de exemplo
products = [
  { name: "Laptop", price: 1200.00, quantity: 10 },
  { name: "Smartphone", price: 800.00, quantity: 20 },
  { name: "Tablet", price: 500.00, quantity: 15 },
  { name: "Smartwatch", price: 200.00, quantity: 30 },
  { name: "Headphones", price: 150.00, quantity: 50 }
]

# Insere cada produto no banco de dados
products.each do |product_data|
  Product.create!(product_data)
end

puts "Seed completed! Created #{Product.count} products."
