[when] There is a Fantasy League = $fl:FantasyLeague()
[when] There are Fantasy Teams in the league with size greater than {value} = $flTeams: ArrayList( size > {value} )
	from collect (
			FantasyTeam()
			from $fl.getFantasyTeamList()
		)
[when] There are Fantasy Teams in the league with size less than {value} = $flTeams.size() <= {value}