def unique_in_order(input)
    array = input.is_a?(Array) ? input : input.chars
    unique_items_in_order = array.uniq
  
    return unique_items_in_order
  end
  
  # Test cases
  p unique_in_order('AAAABBBBCCDAABB')  
  p unique_in_order('ABBCcAD')           
  p unique_in_order([1, 2, 2, 3, 3]) 