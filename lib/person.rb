require "pry"

class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness(happy_points)
      if happy_points > 10 
        @happiness = 10  
      elsif  happy_points < 0 
        @happiness = 0
      else 
        @happiness = happy_points
      end
    end

    def hygiene(hygiene_points)
      @hygiene = if hygiene_points > 10 
        10  
      elsif  hygiene_points < 0 
        0
      else 
        hygiene_points
      end
    end

    def get_money(amount)
      bank_account += amount
      "all about the benjamins"
    end

    def clean?
      @hygiene > 7 
    end

    def happy?
      @happiness > 7
    end

    def take_bath
      hygiene += 4
      "Rub-a-dub just relaxing in the tub"
    end

    def word_out
      hygiene -= 3
      happiness += 2
      "another one bites the dust"
    end

    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3 
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
      if topic.downcase.include?('politics')
      self.happiness -= 1
      friend.happiness -= 1
      "blah blah partisan blah lobbyist"
      elsif topic.downcase.include?('weather')
        self.happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah"
      end
    end
end
  
  # ivan = Person.new("Ivan")
  # ivan.get_money(50)
  # ivan.happiness(8)
  












binding.pry
0