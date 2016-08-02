require "json"
require "pry"
require "rest-client"


class User
  attr_reader :card_array, :class_choice, :class_card_array
  attr_accessor :user_cards
  
  def initialize
    all_cards = RestClient.get('https://api.hearthstonejson.com/v1/13807/enUS/cards.collectible.json')
    @card_array = JSON.parse(all_cards)
    @user_cards = []
    @class_card_array = []
  end

  def get_class_cards(user_class_input)
    
    hero_variable = ""

    if user_class_input == "1"
       hero_variable = "mage"
    elsif user_class_input == "2"
       hero_variable = "paladin"
    elsif user_class_input == "3"
       hero_variable = "druid"
    elsif user_class_input == "4"
       hero_variable = "rogue"
    elsif user_class_input == "5"
       hero_variable = "hunter"
    elsif user_class_input == "6"
       hero_variable = "warlock"
    elsif user_class_input == "7"
       hero_variable = "priest"
    elsif user_class_input == "8"
       hero_variable = "shaman"
    elsif user_class_input == "9"
       hero_variable = "warrior"
    else 
      puts "try again!"
    end

   @card_array.each do |card_element|
     if card_element["playerClass"].downcase == hero_variable
         @class_card_array << card_element["name"]
     end
  end
end


  def show_class_card_array
    puts @class_card_array
  end

# def show_user_card_names
#  @user_cards.each do |element|
#   puts element["name"]
# end
# end 

end