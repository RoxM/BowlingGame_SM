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

end