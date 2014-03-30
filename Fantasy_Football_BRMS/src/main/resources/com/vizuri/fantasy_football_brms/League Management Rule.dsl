[when] When the roster has a fantasy team size greater than {value} = roster: Roster ( size > {value} )
[when] When the roster has sizeValid that is {bool:BOOLEAN:checked} = roster: Roster(sizeValid == {bool})
[then] Invalidate the roster  = roster.setSizeValid(false)

