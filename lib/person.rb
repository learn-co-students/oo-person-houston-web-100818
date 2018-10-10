require 'pry'
class Person

    def initialize(name, bank_bal, happiness, hygiene)
        @name = name
        @bank_bal = bank_bal
        @happiness = happiness
        @hygiene = hygiene
    end
    
    #reader methods
    def name
        @name
    end

    def bank_bal
        @bank_bal
    end

    def hygiene
        @hygiene
    end

    #writer method, with conditions
    def hygiene=(value)
        @hygiene = value
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def happiness
        @happiness
    end

    def happiness=(value)
        @happiness = value
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

        
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end
    
    def get_paid(salary)
        @salary = salary
        @bank_bal += salary
        puts "all about the benjamins"
    end
    
    #attr_reader :salary (same as below)
    def salary
        @salary
    end

    def take_bath
        @hygiene += 4
        puts "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness += 2
        @hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)  
        #@happiness += 3
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(name, topic)
        @topic = topic
        if @topic == "politics"
            @happiness -= 1
            "blah blah partisan blah lobbyist"
        elsif @topic == "weather"
            @happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end
