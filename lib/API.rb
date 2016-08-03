require "json"
require "pry"
require "rest-client"


class Cards
  attr_reader :card_array, :class_choice, :class_card_array, :mood_card
  attr_accessor :user_cards
  
  def initialize
    all_cards = RestClient.get('https://api.hearthstonejson.com/v1/13807/enUS/cards.collectible.json')
    @card_array = JSON.parse(all_cards)
    @user_cards = []
  end

  def get_class_cards(user_class_input)
    @class_card_array = []

    @card_array.each do |card_element|
       if card_element["playerClass"].downcase == user_class_input.downcase
         @class_card_array << card_element
       end
    end
    @class_card_array
  end

  def get_mood_card(class_pick, type, rarity)
    mood_card_array = []
    get_class_cards(class_pick).each do |class_card|
      if class_card["type"].downcase == type.downcase && class_card["rarity"].downcase == rarity.downcase
        mood_card_array << class_card
      end
    end
    @mood_card = mood_card_array.sample
  end

  def get_random_card
    @card_array.sample
  end
end