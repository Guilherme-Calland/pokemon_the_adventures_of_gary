extends "res://scripts/AreaTemplate.gd"

func _ready():
	Music.playMusic("palletTownTheme")
	if GamePositions.gameStart:
		GamePositions.gameStart = false
		gary.global_position = GamePositions.nextPosition
		Orientation.orientation = "down"
	else:
		Orientation.orientation = "up"
		gary.global_position = GamePositions.garysHouseEnter
	GamePositions.nextPosition = GamePositions.garysHouseExit
