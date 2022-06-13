extends "res://scripts/AreaTemplate.gd"

func _ready():
	Music.playMusic("palletTownTheme")
	if GamePositions.gameStart:
		GamePositions.gameStart = false
		gary.global_position = GamePositions.nextPosition
	else:
		gary.global_position = GamePositions.garysHouseEnter
	GamePositions.nextPosition = GamePositions.garysHouseExit
