[when] There is a Fantasy League = $league:League()
[when] The total count of teams in this league is less than {lessValue} or greater than {greaterValue} = ArrayList( size  > 0 && ( size < {lessValue} || size > {greaterValue} ) )
from collect (
   Team(leagueId == $league.id)
)
[then] Create a league size violation with title {$violation.title}
Violation $violation = new Violation();
$violation.setLeagueId( $leagueId );
$violation.setSeverity( Severity.ERROR );
$violation.setTitle( "Empty slot" );
insert( $violation );