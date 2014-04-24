[when] There is a Fantasy League = $fl:FantasyLeague()
[when] There are Fantasy Teams = $flTeams: ArrayList( )
	from collect (
			FantasyTeam()
			from $fl.getFantasyTeamList()
		)
#[when] There are Fantasy Teams in the league with size less than {less} or greater than {greater} = $flTeams.size() < {less} || $flTeams.size() > {greaterValue}