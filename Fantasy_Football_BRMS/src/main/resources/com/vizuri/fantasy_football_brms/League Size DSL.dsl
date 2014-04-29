[when] There is a Fantasy League = $league:FantasyLeague()
[when] The total count of fantasy teams in this league is less than {lessValue} or greater than {greaterValue} = ArrayList(size < {lessValue}  || size > {greaterValue} )
from collect (
   FantasyTeam(leagueId == $league.id)
)