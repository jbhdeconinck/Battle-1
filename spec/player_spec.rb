require './lib/player'

describe Player do

  let(:julien) {described_class.new("Julien")}
  let(:george) {described_class.new("George")}

  it "returns the player's name" do
    expect(julien.name).to eq("Julien")
  end

  describe "#reduce_hp" do
    it 'reduces the player\s hp by 10' do
      expect{julien.reduce_hp}.to change{julien.hp}.by(-10)
    end
  end

  describe "#attack" do
    it 'performs the reduce_hp method another Player' do
      expect(george).to receive(:reduce_hp)
      julien.attack(george)
    end
  end

end
