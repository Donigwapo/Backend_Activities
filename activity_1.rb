h = {a: 1, b: 2, c: 3, d: 4}
puts h[:b]  # Output the value of key :b
h[:e] = 5   # Add key-value pair {e:5} to the hash

data = [
  {name: 'John', age: 30, occupation: 'Engineer'},
  {name: 'Jane', age: 25, occupation: 'Doctor'},
  # ... more data ...
]

person_info = {}

data.each do |person|
  name = person[:name]
  person_info[name] = person
end

print "How old are you? "
age_now = gets.chomp.to_i

puts "In 10 years, you will be #{age_now + 10} years old."
puts "In 20 years, you will be #{age_now + 20} years old."
puts "In 30 years, you will be #{age_now + 30} years old."
puts "In 40 years, you will be #{age_now + 40} years old."