[condition]When there the default scoring system is in use = $ruleSet:RuleSet(id == null)
[condition]When the scoring system with id: {rulesetId} is active = $ruleSet:RuleSet(id == {rulesetId}
[condition]When there is a play statistic=$playStat : PlayStatistic
[consequence]Create a new play score=PlayScore $playScore = new PlayScore;$playScore.week = $playStat.week; $playScore.year = $playStat.year; $playScore.playerId = $playStat.playerId, $playScore.rulesetId = $ruleSet.id
[consequence]Award {points} points = $playScore.setScore( new BigDecimal( {points} ) )


