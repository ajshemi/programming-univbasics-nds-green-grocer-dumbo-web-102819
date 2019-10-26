def find_item_by_name_in_collection(name, collection)
  collection.map do |element|
    if element[:item]==name
      return element
    end
  end
  # Implement me first!
  
  return nil
  # Consult README for inputs and outputs
end

def cart_count(content)
  new_hash={}
  content.map do |element|
    element[:count]={}
    new_hash[element[:item]]=element
  end
  new_hash
end

def consolidate_cart(cart)
  cart_result=cart_count(cart)
  cart_result.map do |k,v|
    i=0
    count=0
    while i<cart.length do
      if cart[i][:item]==v[:item]
        count+=1
      end
      i+=1
    end
    v[:count]=count
  end
  cart_result.map do |ahash|
    ahash[1].delete(:item)
  end
  cart_result
end

#def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
#end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
