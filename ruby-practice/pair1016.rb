# Now, instead of printing out the array, output 5 separate lines of each food, with the prefix,
# “I love”. For example:

# I love cobb salad
# I love spaghetti
# I love pizza
# I love Swedish meatballs
# I love mac and cheese

foods = []
index = 0

5.times do |food|
    puts "Enter your favorite food: "
    food = gets.chomp
    foods << food
end

while index < foods.length
    puts "I love #{foods[index]}"
    index = index + 1
end
