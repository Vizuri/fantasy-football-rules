[when] When the roster has a fantasy team size greater than {sizeValue} = roster: Roster ( size > {sizeValue} )
[when] When the roster has sizeValid that is {bool:BOOLEAN:checked} = roster: Roster(sizeValid == {bool})
[then] Invalidate the roster  = roster.setSizeValid(false)

[when] When the league has fantasyTeamsCount greater than {countValue} = league: League ( fantasyTeamsCount > {countValue} )
[when] When the league has valid that is {bool:BOOLEAN:checked} = league: League(valid == {bool})
[then] Invalidate the league  = league.setValid(false)