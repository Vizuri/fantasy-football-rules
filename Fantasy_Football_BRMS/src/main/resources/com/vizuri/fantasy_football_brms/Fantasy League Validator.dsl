[when] There is a Fantasy League = $fl:FantasyLeague()
[when] There are Fantasy Teams with size less than {lessValue} or greater than {greaterValue} = $flTeams: ArrayList(size >{greaterValue} || size < {lessValue} )
	from collect (
			FantasyTeam()
			from $fl.getFantasyTeamList()
		)
#[when] There are Fantasy Teams in the league with size less than {less} or greater than {greater} = $flTeams.size() < {less} || $flTeams.size() > {greaterValue}

[when] There is League = $league:League()
[when] There are teams with size less than {less} or greater than {greater} =ArrayList(size >{greater}, size < {less})
from collect (
   FantasyTeam(leagueId == $league.leagueId)
)