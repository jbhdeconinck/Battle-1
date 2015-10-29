require './lib/player'

describe Player do

  let(:julien) {described_class.new("Julien")}
  let(:george) {described_class.new("George")}

  it "returns the player's name" do
    expect(julien.name).to eq("Julien")
  end
end
