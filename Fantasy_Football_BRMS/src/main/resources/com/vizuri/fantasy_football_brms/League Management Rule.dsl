[when] There is a roster =$roster:Roster()

[when]- When the roster has a fantasy team size greater than {sizeValue} = $roster.size >  {sizeValue} 
[when]- When the roster has sizeValid that is {bool:BOOLEAN:checked} =$roster.sizeValid == {bool}
[then] Invalidate the roster  = modify ($roster) { setSizeValid(false) }

[when] There is a league = $league:League()

[when]- When the league has fantasyTeamsCount greater than {countValue} = $league.fantasyTeamsCount > {countValue} 
[when]- When the league has valid that is {bool:BOOLEAN:checked} = $league.valid == {bool}
[then] Invalidate the league  = modify ($league) { setValid(false) }
[then] Populate the comment = modify($league) {setComment("This league connot have more than 10 Fantasy Teams")} 
