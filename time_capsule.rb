capsule_contents = []
item_numbers = []

puts "Hello, what is your name?"
name = gets.chomp

puts "Alright #{name}, to stop adding items to the capsule, just enter 'FINISHED'."

while true
  puts "Please input an item to add to the time capsule."
  item = gets.chomp
  break if item == "FINISHED"

  puts "How many of that item would you like to add?"
  item_num = gets.to_i

  if item_num <= 0
    puts "Ok hooligan, I'll count that as 1"
    item_num = 1
  end

  item_numbers << item_num
  capsule_contents << item unless item.strip.empty?
end

puts "#{name}, thanks for trying out our Time Capsule maker. Here is a list of the items in your time capsule!:\n"

i = 0
capsule_contents.each do |item|
  puts "--> #{item} (#{item_numbers[i]})"
  i += 1
end
