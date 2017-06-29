# your code goes here
require "pry"
class Person

	attr_accessor :bank_account, :hygiene, :happiness
	attr_reader :name

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def hygiene=(num) 
		@hygiene = num
		
		if @hygiene > 10
			@hygiene = 10
		elsif @hygiene < 0
			@hygiene = 0
		end
			
	end

	def happiness=(num)
		@happiness = num
		
		if @happiness > 10
			@happiness = 10
		elsif @happiness < 0
			@happiness = 0
		end

	end

	def clean?
		@hygiene > 7
	end

	def happy?
		@happiness > 7
	end

	def get_paid(salary)
		@bank_account += salary
		"all about the benjamins"
	end

	def take_bath
		#binding.pry
		self.hygiene=(@hygiene + 4)
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.happiness=(@happiness + 2)
		self.hygiene=(@hygiene - 3)
		"♪ another one bites the dust ♫"
	end

	def call_friend(person)
		self.happiness=(@happiness + 3)
		person.happiness=(person.happiness + 3)
		"Hi #{person.name}! It's #{self.name}. How are you?"

	end

	def start_conversation(other_person, topic)
		if topic == "politics"
			self.happiness=(@happiness - 2)
			other_person.happiness=(other_person.happiness - 2)
			"blah blah partisan blah lobbyist"
		elsif topic == "weather"
			self.happiness=(@happiness + 1)
			other_person.happiness=(other_person.happiness + 1)
			"blah blah sun blah rain"
		else
			"blah blah blah blah blah"
		end
				
	end


end