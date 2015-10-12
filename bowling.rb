class BowlingGame

def initialize
	@score = 0
	@rollindex = 0
	@rolls = []
	@frames = ["Frame1","Frame2","Frame3","Frame4","Frame5","Frame6","Frame7","Frame8","Frame9","Frame10"]
end

def roll pins
	@rolls.push pins
end

def score
	@frames.each do
		if frameScore == 10
			@score+= 10 + @rolls[@rollindex + 2]
		else
			@score+=frameScore
		end
		@rollindex+=2
	end
@score
end

def frameScore
	@rolls[@rollindex] + @rolls[@rollindex + 1]
end


end