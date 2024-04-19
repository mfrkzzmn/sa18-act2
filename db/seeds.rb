# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data to avoid duplicating entries if you re-run the seeds file
Product.delete_all

# Create new products
Product.create(name: 'Espresso Machine', price: 199.99, description: 'Make barista-grade espresso at home with our compact and easy-to-use espresso machine.')
Product.create(name: 'Wireless Headphones', price: 89.95, description: 'Experience high-quality sound without the wires. Perfect for home, travel, or the office.')
Product.create(name: 'Smart Watch', price: 149.50, description: 'Stay connected, monitor your health, and track your fitness with our stylish smart watch.')

puts "Products seeded successfully!"
