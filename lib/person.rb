# your code goes here
require 'pry'

class Person

    #attr_reader

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    attr_reader :name 
    attr_reader :happiness
    attr_reader :hygiene
    attr_accessor :bank_account

    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else
            @happiness = value
        end
    end

    def hygiene=(value)
        if value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else
            @hygiene = value

        end

    end



    def clean?
       
        if @hygiene > 7
           return true        
        else
            return false
        end


        
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
        
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"

    end

    def take_bath
       self.hygiene += 4
       return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi " + friend.name + "! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end

end
