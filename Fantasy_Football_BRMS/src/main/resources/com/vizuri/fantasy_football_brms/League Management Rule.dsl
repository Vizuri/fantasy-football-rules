[when] There is a roster =$roster:Roster()

[when]- When the roster has a fantasy team size greater than {sizeValue} = $roster.size >  {sizeValue} 


[when]- When the roster has sizeValid that is {bool:BOOLEAN:checked} =$roster.sizeValid == {bool}

[then] Invalidate the roster  = modify($roster){setSizeValid(false)}

[when] When the league has fantasyTeamsCount greater than {countValue} = league: League ( fantasyTeamsCount > {countValue} )
[then] Invalidate the league  = league.setValid(false)

[when] When the league has valid that is {bool:BOOLEAN:checked} = league: League(valid == {bool})
[then] Invalidate the league  = league.setValid(false)
