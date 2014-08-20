[condition]When there the default scoring system is in use = $ruleSet:RuleSet(id == null)
[condition]When the scoring system with id: {rulesetId} is active = $ruleSet:RuleSet(id == {rulesetId}
[consequence]Award {points} points = $playScore.setScore( new BigDecimal( {points} ) )
[consequence]Award {points} points for every {quantity} stat values = $playScore.setScore( new BigDecimal ( {points} * {quantity} ) )

