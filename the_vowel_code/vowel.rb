def encode(str)
    str.tr('aeiou', '12345')
  end
  
  def decode(str)
    str.tr('12345', 'aeiou')
  end
  
  # Test the functions
  input_str = 'hello world'
  encoded_str = encode(input_str)
  puts "Encoded string: #{encoded_str}"
  
  decoded_str = decode(encoded_str)
  puts "Decoded string: #{decoded_str}"
  