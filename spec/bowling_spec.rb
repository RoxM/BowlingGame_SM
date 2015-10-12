require_relative '../bowling'

describe BowlingGame do

it "returns 0 for gutter game" do
	@bowling = BowlingGame.new
    20.times {@bowling.roll(0)}
    expect(@bowling.score).to eq(0)
end

end