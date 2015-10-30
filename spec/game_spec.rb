require './lib/game'

describe Game do

  let(:game) {described_class.new(julien,george)}
  let(:julien) {double(:player)}
  let(:george) {double(:player)}

  describe "#attack" do
    it "causes a player to reduce another player's HP" do
      expect(julien).to receive(:reduce_hp)
      game.attack(julien)
    end
  end

  describe "#turn" do
    it "starts as player 1" do
      expect(game.current_turn).to eq(julien)
    end

    it "switch_turns" do
      game.switch_turns
      expect(game.current_turn).to eq(george)
    end

  end

  describe "#opponent" do
    it "returns opponent for a given player" do
      expect(game.opponent(julien)).to eq(george)
    end
  end

end
