[when] There is a Fantasy League = $league:League()
[when] The total count of teams in this league is less than {lessValue} or greater than {greaterValue} = java.util.ArrayList( size  > 0 && ( size < {lessValue} || size > {greaterValue} ) )
from collect (
   Team(leagueId == $league.id)
)
[then] Create a league size violation
Violation $violation = new Violation();
$violation.setLeagueId( $leagueId );
$violation.setSeverity( Severity.ERROR );
$violation.setTitle( "Other" );
insert( $violation );