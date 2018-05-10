def countdown(number)
	if number>0
		puts number
		countdown(number-1)
	else
		puts number
	end
end
countdown(20)
countdown(5)
countdown(-3)
