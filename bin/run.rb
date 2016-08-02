require_relative "../wrapper.rb"
require_relative "../API.rb"

new_user = User.new

puts "Please type your class!"

user_input = gets.chomp

new_user.get_class_cards(user_input)

new_user.show_user_card_names


