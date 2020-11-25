require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.find_index do |key|
    if key[:item] == name
      return key
    end 
  end 
end


# Consult README for inputs and outputs
#
# REMEMBER: This returns a new Array that represents the cart. Don't merely
# change `cart` (i.e. mutate) it. It's easier to return a new thing.

def consolidate_cart(cart)
  new_cart = {} 
  cart.each do |items_array| 
    items_array.each do |item, attribute_hash| 
      new_cart[item] ||= attribute_hash 
      new_cart[item][:count] ? new_cart[item][:count] += 1 :   
      new_cart[item][:count] = 1 
    end 
  end 
  binding.pry 
  new_cart
end


  