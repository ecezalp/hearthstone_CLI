
require_relative "../lib/API.rb"
require_relative "../lib/CLI.rb"

require 'pry'

cards = Cards.new
go = Interface.new
running = true

while running == true

directive = go.display_options

if directive.downcase == 'bye'
  puts "Deuces #{go.name}!"
  running = false
elsif directive.to_i == 1
  go.display_rando(cards.get_random_card)
elsif directive.to_i == 2
  go.mood_card_calc
  cards.get_mood_card(go.class, go.type, go.rarity)
  go.display_mood_card(cards.mood_card)
elsif directive.to_i == 3
  cards.get_class_cards(go.pick_a_class).each do |class_card|
    puts class_card["name"]
  end
  puts "\n"
else
  puts "Invalid Command, try again."
end
end








