[when] There is a Fantasy League = $league:League()
[when] The total count of teams in this league is less than {lessValue} or greater than {greaterValue} = ArrayList( size  > 0 && ( size < {lessValue} || size > {greaterValue} ) )
from collect (
   Team(leagueId == $league.id)
)