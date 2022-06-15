extends "res://scripts/AreaTemplate.gd"

func _ready():
#	Music.stop()
	Music.playMusic("palletTownTheme")
	if not GamePositions.fromAshsRoom:
		gary.global_position = GamePositions.ashsLivingRoomEnter
		Orientation.orientation = "up"
	else:
		Orientation.orientation = "down"
	GamePositions.fromAshsRoom = false
	GamePositions.nextPosition = GamePositions.ashsLivingRoomExit
