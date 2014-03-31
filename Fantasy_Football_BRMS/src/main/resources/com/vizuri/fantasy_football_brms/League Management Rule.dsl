[when] There is a roster=$roster:Roster()

[when]- The roster has a fantasy team with size greater than {sizeValue}=$roster.size>{sizeValue} 
[when]- The roster has sizeValid that is {bool:BOOLEAN:checked}=$roster.sizeValid == {bool}
[then] Invalidate the roster  = modify ($roster) { setSizeValid(false) }

[when] There is a league = $league:League()

[when]- The league has fantasyTeamsCount greater than {countValue} = $league.fantasyTeamsCount > {countValue} 
[when]- The league has valid that is {bool:BOOLEAN:checked} = $league.valid == {bool}
[then] Invalidate the league  = modify ($league) { setValid(false) }
