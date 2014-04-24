[when] There is League = $league:League()
[when] There are teams with size less than {less} or greater than {greater} =ArrayList(size >{greater} || size < {less})
from collect (
   FantasyTeam(leagueId == $league.leagueId)
)