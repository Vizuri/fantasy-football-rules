[when] There is a Fantasy Team = $team:FantasyTeam()
[when] The total count of players in this team is less than {lessValue} or greater than {greaterValue} = ArrayList( size  > 0 && ( size < {lessValue} || size > {greaterValue} ) )
from collect (
   Player(fantasyTeamId == $team.id)
)
[then] There is a Violation with severity as {severity} title as {title} and details as {details} = $vio:Violation(severity=={severity}, title=={title}, details=={details})
[then] Insert the Violation = modify ($team){violationList = new ArrayList().add($vio)}

