shopping_cart = {}
total_price = {}

puts "Enter 'stop' as a name of product to stop entering goods"
while true do
  puts 'Enter a name of product: '
  product = gets.chomp
  break if product == 'stop'
  puts "Enter a price for one #{product}: "
  product_price = gets.chomp.to_f
  puts "Enter quantity of #{product}: "
  quantity = gets.chomp.to_f
  product_price_quantity = {product => {product_price => quantity}}
  shopping_cart.merge!(product_price_quantity)
  total_price.store(product, (product_price * quantity))
end

puts "Shoping cart: #{shopping_cart}"
total_price.each do |product, product_total_price|
  puts "Total price for #{product} is: #{product_total_price}."
end
