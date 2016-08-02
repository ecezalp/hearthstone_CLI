require_relative "wrapper.rb"

class User
  attr_reader :card_array, :class_choice
  attr_accessor :user_cards
  
  def initialize
    all_cards = RestClient.get('https://api.hearthstonejson.com/v1/13807/enUS/cards.collectible.json')
    @card_array = JSON.parse(all_cards)
    @user_cards = []
  end

  def get_class_cards(class_choice)
    @card_array.collect do |card_element|
      if card_element["playerClass"].downcase == class_choice.downcase || card_element["playerClass"].downcase == 'neutral'
      @user_cards << card_element
      end
    end
  end

def show_user_card_names
 @user_cards.each do |element|
  puts element["name"]
end
end 




end