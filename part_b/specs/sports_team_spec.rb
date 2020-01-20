require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test
  def setup
    @team1 = SportsTeam.new("Scotland", ["Andy", "Alan", "Calum"], "Luke", 0 )
  end

  def test_get_team_name
    assert_equal("Scotland", @team1.team_name)
  end
  def test_get_players
    assert_equal(["Andy", "Alan", "Calum"], @team1.players)
  end
  def test_get_coach
    assert_equal("Luke", @team1.coach)
  end

def test_new_coach
  @team1.coach = "Paul"
  assert_equal("Paul", @team1.coach)
end

def test_new_player
  assert_equal(["Andy", "Alan", "Calum", "Luke"], @team1.new_player("Luke"))
end

def test_does_player_exsist
  assert_equal("Alan", @team1.does_player_exsist("Alan"))
end

def test_has_team_won
  assert_equal(1, @team1.has_team_won(true))
end

end
