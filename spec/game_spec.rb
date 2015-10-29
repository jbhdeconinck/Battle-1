require './lib/game'

describe Game do

  let(:game) {described_class.new(julien,george)}
  let(:julien) {double(:player)}
  let(:george) {double(:player)}

  describe "#attack" do
    it "causes a player to reduce another player" do
      expect(julien).to receive(:reduce_hp)
      game.attack(julien)
    end
  end

end
