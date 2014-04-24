[when] There is League = $league:League()
[when] The total count of fantasy teams in this league is less than {lessValue} or greater than {greaterValue} = ArrayList(size >{greaterValue} || size < {lessValue})
from collect (
   FantasyTeam(leagueId == $league.leagueId)
)