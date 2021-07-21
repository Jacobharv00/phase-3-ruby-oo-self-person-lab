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
      @happiness = if happy_points > 10 
        10  
      elsif  happy_points < 0 
        0
      else 
        happy_points
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
        self.bank_account += amount
        "all about the benjamins"
    end

    def clean?
      @hygiene > 7 
    end

    def happy?
      @happiness > 7
    end

    def take_bath
      self.hygiene += 4
      "Rub-a-dub just relaxing in the tub"
    end
    
    
  end
  
  ivan = Person.new("Ivan")
  ivan.get_money(50)
  ivan.happiness(8)
  












binding.pry
0