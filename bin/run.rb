# require_relative "../wrapper.rb"
require_relative "../API.rb"
require 'pry'

new_user = User.new

puts "Which Hearthstone Mood Card are you?"

 puts "Press the number for threat that you like the most!"

 puts "1. My magic will tear you apart!" # - mage
 puts "2. Justice demands retribution!" # - paladin
 puts "3. Nature will rise against you!" # - druid
 puts "4. I will be your death!"  # - rogue
 puts "5. I will hunt you down!"  # - hunter 
 puts "6. Your soul shall suffer!" # - warlock
 puts "7. The Light shall burn you!" # - priest
 puts "8. The Elements will destroy you!" # - shaman
 puts "9. I will crush you!" # - warrior


user_hero_input = gets.chomp

new_user.get_class_cards(user_hero_input)


puts "Are you a thinker or a doer?"
puts "1.thinker" # - spell
puts "2. doer" # - minion



 # puts "are you a thinker or a doer?"
 # 





