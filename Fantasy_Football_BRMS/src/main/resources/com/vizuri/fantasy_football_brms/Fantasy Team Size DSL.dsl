[when] There is a Fantasy Team = $team:FantasyTeam()
[when] The Fantasy Team has a name called '{title}' = name=='{title}'
[when] The total count of players in this team is less than {lessValue} or greater than {greaterValue} = ArrayList( size  > 0 && ( size < {lessValue} || size > {greaterValue} ) )
from collect (
   Player(fantasyTeamId == $team.id)
)