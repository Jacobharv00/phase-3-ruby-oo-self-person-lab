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
        if happy_points <= 10 && happy_points >= 0 
        happy_points
       end
    end

    def got_money(amount)
        self.bank_account += amount
    end

person = Person.new("Ivan")
    person.happiness(11)
    person.got_money(50)
binding.pry
end