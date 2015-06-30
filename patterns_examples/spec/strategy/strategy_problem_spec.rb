# strategy pattern problem to solve
require 'spec_helper'

require_relative '../../lib/strategy/strategy_problem.rb'
describe "Problem to solve with strategy pattern" do

  describe FakePlayer do
    let(:player) {FakePlayer.new}

    it "has position" do
      expect(player.position).to eq(:forward)
    end

    it "scored goals" do
      expect(player.goals).to eq(3)
    end

    describe "printing player information" do
      it "prints info" do
        expect(player.print_info).to eq("Player's position is forward and he scored 3 goals.")
      end
    end

    describe 'abilities' do
      it "has high speed" do
        expect(player.abilities).to include(:high_speed)
      end

      it "could scoring goals" do
        expect(player.abilities).to include(:scoring_goals)
      end
    end
  end
end
