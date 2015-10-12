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
		@score+=@rolls[@rollindex] + @rolls[@rollindex + 1]
	end
@score
end


end