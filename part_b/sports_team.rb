class SportsTeam
  attr_reader :team_name
  attr_accessor :coach, :players
def initialize(team_name, players, coach, points)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = points
end

def new_player(new_player)
  return @players.push(new_player)
end

def does_player_exsist(player_name)
  for player in @players
    if player == player_name
      return player
    end
  end
end

def has_team_won(win)
  if win == true
    @points += 1
  end
end

# def get_team_name
#   return @team_name
# end
# def get_players
#   return @players
# end
# def get_coach
#   return @coach
# end
#
# def new_coach(new_coach)
#   @coach = new_coach
# end
end
