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

it "returns 14 for simple spare" do
	@bowling.roll(5)
	@bowling.roll(5)
	@bowling.roll(1)
	@bowling.roll(2)
    16.times {@bowling.roll(0)}
    expect(@bowling.score).to eq(14)
end

it "returns 16 for simple STRIKE" do
	@bowling.roll(10)
	@bowling.roll(2)
	@bowling.roll(2)
    17.times {@bowling.roll(0)}
    expect(@bowling.score).to eq(18)
end

it "returns 150 for ALL SPARES" do
    21.times {@bowling.roll(5)}
    expect(@bowling.score).to eq(150)
end

it "returns 300 for ALL STRIKES" do
    12.times {@bowling.roll(10)}
    expect(@bowling.score).to eq(300)
end

end