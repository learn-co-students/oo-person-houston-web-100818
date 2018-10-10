require 'pry'

class Person

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness

  def hygiene=(hygiene_value) 
    if hygiene_value <0
      @hygiene = 0
    elsif hygiene_value > 10
      @hygiene = 10
    else
      @hygiene = hygiene_value
    end
  end

  def happiness=(happiness_value) 
    if happiness_value <0
      @happiness = 0
    elsif happiness_value > 10
      @happiness = 10
    else
      @happiness = happiness_value
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
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -=2 
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness +=1 
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
