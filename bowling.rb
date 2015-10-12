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
		if isStrike
			@score+= 10 + bonusPoints
			@rollindex+=1
		elsif isSpare
			@score+= 10 + bonusPoints
			@rollindex+=2
		else
			@score+=frameScore
			@rollindex+=2
		end
	end
@score
end

def frameScore
	@rolls[@rollindex] + @rolls[@rollindex + 1]
end

def isStrike
	@rolls[@rollindex] == 10 ? true : false
end

def isSpare
	frameScore == 10 ? true : false
end

def bonusPoints
	isStrike ? @rolls[@rollindex + 1] + @rolls[@rollindex + 2] : @rolls[@rollindex + 2]
end

end