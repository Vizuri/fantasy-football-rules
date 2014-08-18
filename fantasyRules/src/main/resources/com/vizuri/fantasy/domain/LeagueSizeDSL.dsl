[when] There is a Fantasy League = $league:League()
[when] The total count of teams in this league is less than {lessValue} or greater than {greaterValue} = java.util.ArrayList( size  > 0 && ( size < {lessValue} || size > {greaterValue} ) )
from collect (
   Team(leagueId == $league.id)
)
[then]Create violation with league size description=Violation $violation = new Violation();$violation.setLeagueId( $league.id );$violation.setSeverity( Severity.WARNING );$violation.setTitle( "Other(See Details)" );$violation.setDescription( "League should have {lessValue} and {greaterValue} teams" );insertLogical( $violation );