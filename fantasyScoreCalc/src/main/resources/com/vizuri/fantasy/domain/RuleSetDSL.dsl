[condition]When there the default scoring system is in use = $ruleSet:RuleSet(id == null)
[condition]When the scoring system with id: {rulesetId} is active = $ruleSet:RuleSet(id == {rulesetId}
[condition]When there is a play statistic of type {statType:ENUM:PlayStatistic.statisticType} for year {year:[0-9]{4}} with statistic value greater than {lowerLimit:[0-9]{1,4}}=$playStat : PlayStatistic( statisticType == "{statType}", year == {year}, statisticValue > {lowerLimit} )
[condition]When there is a play statistic=$playStat:PlayStatistic( )
[condition]And that statistic is of type {statType:ENUM:PlayStatistic.statisticType}=$playStat.statisticType == "{statType}"
[condition]And that statistic is for year {year}=$playStat.year == {year}
[condition]And the statistic quantity is more than {quantity:[0-9]?[0-9]?[0-9]?[0-9]}=$playStat.statisticValue > {quantity}
[consequence]Create a new play score=PlayScore $playScore = new PlayScore();$playScore.week = $playStat.week; $playScore.year = $playStat.year; $playScore.playerId = $playStat.playerId; $playScore.rulesetId = $ruleSet.id; insert($playScore);
[consequence]Award {points} points = $playScore.setScore( new BigDecimal( {points} ) )


