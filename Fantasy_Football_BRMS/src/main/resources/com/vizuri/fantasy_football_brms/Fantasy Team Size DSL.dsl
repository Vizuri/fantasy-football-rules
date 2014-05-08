[when] There is a Fantasy Team = $team:FantasyTeam()
[when] The total count of players in this team is less than {lessValue} or greater than {greaterValue} = ArrayList( size  > 0 && ( size < {lessValue} || size > {greaterValue} ) )
from collect (
   Player(fantasyTeamId == $team.id)
)
[when] - The second check total count of players in this team is less than {lessValue} or greater than {greaterValue} =  $team.getPlayers().size() > 0 && ($team.getPlayers().size() < {lessValue} ||  $team.getPlayers().size() > {greaterValue})
)