# You are the owner of a store that sells items (you decide what specifically).
# Each item has various properties such as color, price, etc.
# Represent 3 items using hashes. Each hash should have the same keys with different values.
# Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol
# syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).

hat1 = {:color => "purple", :price => 35.00, :size => "small"}
hat2 = {color: "blue", price: 34.00, size: "large"}
hat3 = {:color => "pink", :price => 36.00, :size => "medium"}

puts "We have #{hat1[:size]} #{hat1[:color]} hats that are #{hat1[:price]}"
