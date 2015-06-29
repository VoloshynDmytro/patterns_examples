#Template method pattern problem
require 'spec_helper'

require_relative '../../lib/template_method/template_method_problem.rb'
describe "Problem to solve with template method pattern" do
  context "Default team" do
    let (:team) { FakeTeam.new }

    it "has 15 players" do
      expect(team.size).to eq (15)
    end

    it "has substitutions which equals whole team size minus count of main players" do
      expect(team.substitutions).to eq(team.size - team.main_size)
    end

    it "is a member of the leagues" do
      expect(team.leagues).to eq ([])
    end
  end

  context "Basketball team" do
    let (:team) { FakeTeam.new :basketball }

    it "has 12 players" do
      expect(team.size).to eq (12)
    end

    it "has substitutions which equals whole team size minus count of main players" do
      expect(team.substitutions).to eq(team.size - team.main_size)
    end

    it "is a member of the leagues" do
      expect(team.leagues).to include(:NBA)
    end
  end

  context "Hockey team" do
    let (:team) { FakeTeam.new :hockey }

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
