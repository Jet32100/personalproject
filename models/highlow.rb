class Highlow
	attr_accessor :firstcard, :secondcard, :suit
	def initialize

@firstcard = rand(10) + 10a	
@secondcard = rand(10) + 1
@suit = rand(3) + 1

end 

def result(guess)
	
if @secondcard > @firstcard && guess == "higher"
return "Congratulations"

elsif @secondcard < @firstcard && guess == "lower"
return "Congratulations"

elsif @secondcard == @firstcard 
return "Push"

elsif @secondcard < @firstcard && guess == "higher"
return "You lose!"

elsif @secondcard > @firstcard && guess == "lower"
return "You lose!"				

end
end
end


Highlow.new	