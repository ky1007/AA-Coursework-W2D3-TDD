require 'towers_of_hanoi'
require 'rspec'

describe TowersOfHanoi do
  context "when moving disks" do
    subject(:game) { TowersOfHanoi.new() }
    before(:each) { game.move([0,1]) }

    describe "#move" do
      it "successfully moves disc if legal move" do
        expect(game.move([0,1])).to eq([[3, 2], [1], []])
      end

      it "blocks disc from moving if move is illegal" do
        game.move([0,1])
        expect{ game.move([0,1]) }.to raise_error(IllegalMove)
      end

      it "expects to recieve an array" do

      end
    end

  end
end
#scratch
  #legal move:
  #game.stack[to].last < game.stack[from].last
