require 'pry'
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(value)
        if value >= 0 && value <= 10
            @happiness = value
        elsif value < 0
            @happiness = 0
        elsif value > 10
            @happiness = 10
        end
    end
    def hygiene=(value)
        if value >= 0 && value <= 10
            @hygiene = value
        elsif value < 0
            @hygiene = 0
        elsif value > 10
            @hygiene = 10
        end
    end
    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end
    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        if topic == 'politics'
            self.happiness -= 2
            person.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1
            person.happiness += 1
            'blah blah sun blah rain'
        else 'blah blah blah blah blah'
        end
    end
end
