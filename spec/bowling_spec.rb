require_relative '../bowling'

describe BowlingGame do

before do
	@bowling = BowlingGame.new
end

it "returns 0 for gutter game" do
    20.times {@bowling.roll(0)}
    expect(@bowling.score).to eq(0)
end

it "returns 20 for all ones" do
    20.times {@bowling.roll(1)}
    expect(@bowling.score).to eq(20)
end

xit "returns 14 for simple spare" do
	@bowling.roll(5)
	@bowling.roll(5)
	@bowling.roll(1)
	@bowling.roll(2)
    16.times {@bowling.roll(0)}
    expect(@bowling.score).to eq(14)
end

end