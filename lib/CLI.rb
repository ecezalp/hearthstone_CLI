class Interface
  attr_reader :name
  attr_accessor :class, :type, :rarity

  def initialize
    puts "Welcome to Hearthstoners, an app that does 3 whole things.\n"
    puts "Let's kick things off, what should I call you?\n"
    @name = gets.chomp
  end

  def display_options
    puts "\nYou can type 'bye' at most times to end the program.\n\n"
    puts "Okie Dokie #{@name}, here's the shnizz that goes down here:\n"
    puts "1 => Pull a random Hearthstone card and get a list of its details."
    puts "2 => Discover your daily Hearthstone Mood Card, using our sophisticated algorithm."
    puts "3 => Display a list of cards of a Class of your choosing.\n\n"
    puts "Enter the number that corresponds with your choice: "
    gets.chomp
  end

  def display_rando(card)
    card.each do |key, value|
      puts "#{key.to_s.capitalize}: #{value}\n"
    end
  end

  def pick_a_class
    puts "Shaman\nRogue\nWarrior\nPaladin\nMage\nDruid\nPriest\nWarlock\nHunter"
    print "Enter a class from the list above: "
    gets.chomp.upcase
  end


  def mood_card_calc
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

     threat = gets.chomp.to_i

     running = true
       while running == true
       running = false
       @class = case threat

                  when 1
                    "mage"
                  when 2
                    "paladin"
                  when 3
                    "druid"
                  when 4
                    "rogue"
                  when 5
                    "hunter"
                  when 6
                    "warlock"
                  when 7
                    "priest"
                  when 8
                    "shaman"
                  when 9
                    "warrior"
                  else

                  running = true
                  puts "Invalid choice, choose again: "
                  threat = gets.chomp.to_i
                  end
                end

      puts "Which is mightier? The pen or the sword."
      puts "1. I choose the pen." # - spell
      puts "2. I choose the sword.\n" # - minion 

      print "Choice: " 
      choice = gets.chomp.to_i


      running = true
      while running == true
      running = false

      @type = case choice
                when 1
                  "SPELL"
                when 2
                  "MINION"
                else
                  puts "Invalid choice: Choose again."
                  running = true
                  choice = gets.chomp.to_i
                end
              end

      puts "Okay, last question. Which one of these describes your current mental state?"
      puts "1 => All I do is blerg, blerg, blerg, blerg blerg"
      puts "2 => Takin' it so incredibly sleezy."
      puts "3 => If I had a hammer, I'd hammer some brewdogs."
      puts "4 => Flambom, Flowmbowm, Flamebot, I give up."
      puts "5 => I know WHENDAHOLLABLEE!"

      choice = gets.chomp.to_i

      running = true 
      while running == true
      running = false

      @rarity = case choice
                  when 1
                    "FREE"
                  when 2
                    "COMMON"
                  when 3
                    "RARE"
                  when 4
                    "EPIC"
                  when 5
                    if @type == "SPELL"
                      "EPIC"
                    else
                      "LEGENDARY"
                    end 
                  else
                    puts "Invalid choice: Choose again."
                    running = true
                    choice = gets.chomp.to_i
                  end
                end
                    
    def display_mood_card(mood_card)
      puts "\nYour current mood is best captured by the #{mood_card["playerClass"].downcase.capitalize} class card....\n"
      puts "\n                      #{mood_card["name"]}\n           (#{mood_card["flavor"]})\n\n"
    end
  end
end