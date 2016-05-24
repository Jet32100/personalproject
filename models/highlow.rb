class Highlow
	attr_accessor :firstcard, :secondcard
	def initialize

@firstcard = rand(10) + 1
@secondcard = rand(10) + 1

end 

def result(guess)
	
if @secondcard > @firstcard && guess == "higher"
puts "Congratulations"

elsif @secondcard < @firstcard && guess == "lower"
puts "Congratulations"

elsif @secondcard == @firstcard 
puts "Push"

elsif @secondcard < @firstcard && guess == "higher"
puts "You lose!"

elsif @secondcard > @firstcard && guess == "lower"
puts "You lose!"				

end
end
end


Highlow.new