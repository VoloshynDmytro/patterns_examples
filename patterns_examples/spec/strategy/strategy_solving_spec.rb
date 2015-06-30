# Starategy pattern solving
require 'spec_helper'

require_relative '../../lib/strategy/strategy_solving.rb'
describe "Solving the problem with strategy pattern" do

  describe Player do
    let(:player) {Player.new BaseInfoStats.new}
    it "has position" do
      expect(player.position).to eq(:forward)
    end

    it "scored goals" do
      expect(player.goals).to eq(3)
    end

    describe 'abilities' do
      it "has high speed" do
        expect(player.abilities).to include(:high_speed)
      end

      it "could scoring goals" do
        expect(player.abilities).to include(:scoring_goals)
      end
    end

    describe "printing player" do
      it "information" do
        expect(player.print_stats).to eq("Hi!Player's position is forward and he scored 3 goals.")
      end

      it "abilities" do
        player.printer = AbilitiesStats.new
        expect(player.print_stats).to eq("Hi!high_speed, scoring_goals")
      end
    end
  end

  describe StatsPrinter do
    let(:printer) {StatsPrinter.new}
    it "should raise not implemented error on printing" do
      expect { printer.print }.to raise_exception
    end

    it "AbilitiesStats respond to print" do
      expect(AbilitiesStats.new).to respond_to(:print)
    end

    it "BaseInfoStats respond to print" do
      expect(BaseInfoStats.new).to respond_to(:print)
    end
  end
end
