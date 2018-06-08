# your code goes here
require 'pry'
class Person
  attr_reader :name
  attr_accessor :bank_account, :hygiene, :happiness

  MAX = 10
  MIN = 0
  @@ALL = []

  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
    @@ALL << self
  end

  def happiness=(happiness)
    @happiness = happiness
    if @happiness > MAX
      @happiness = MAX
    elsif @happiness < MIN
      @happiness = MIN
    else @happiness = happiness
    end
    @happiness
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene > MAX
      @hygiene = MAX
    elsif @hygiene < MIN
      @hygiene = MIN
    else @hygiene = hygiene
    end
    @hygiene
  end

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
 # @energy = [@energy + 50, MAX_ENERGY].min
  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(name)
    self.happiness += 3
    name.happiness += 3
    return "Hi #{name.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end


end
