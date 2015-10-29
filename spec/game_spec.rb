require './lib/game'

describe Game do

  let(:game) {described_class.new}
  let(:julien) {double(:player, reduce_hp: 50)}

  describe "#attack" do
    it "causes a player to reduce another player" do
      expect(game.attack(julien)).to eq 50
    end
  end

end
