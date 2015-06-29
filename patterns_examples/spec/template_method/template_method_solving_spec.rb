# Template method pattern
require 'spec_helper'

require_relative '../../lib/template_method/template_method_solving.rb'
describe "Template method pattern" do
  context "Default team" do
    let (:team) { Team.new }

    it "has 15 players" do
      expect(team.size).to eq (15)
    end

    it "has substitutions which equals whole team size minus count of main players" do
      expect(team.substitutions).to eq(team.size - team.main_size)
    end

    it "requires subclasses to implement unique data" do
      expect {team.founded}.to raise_exception
    end

    it "is a member of the leagues" do
      expect(team.leagues).to eq ([])
    end
  end

  context "Basketball team" do
    let (:team) { BasketballTeam.new }

    it "has 12 players" do
      expect(team.size).to eq (12)
    end

    it "has substitutions which equals whole team size minus count of main players" do
      expect(team.substitutions).to eq(team.size - team.main_size)
    end

    it "is a member of the leagues" do
      expect(team.leagues).to include(:NBA)
    end

    it "should show info about when and by whom team was founded" do
      expect(team.founded).to eq("#{team.founded_at} by #{team.founder}")
    end
  end

  context "Hockey team" do
    let (:team) { HockeyTeam.new }

    it "has 8 players" do
      expect(team.size).to eq (20)
    end

    it "has substitutions which equals whole team size minus count of main players" do
      expect(team.substitutions).to eq(team.size - team.main_size)
    end

    it "is a member of the leagues" do
      expect(team.leagues).to include(:NHL)
    end
  end
end
