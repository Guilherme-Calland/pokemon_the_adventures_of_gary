extends "res://scripts/AreaTemplate.gd"

func _ready():
	gary.global_position = GamePositions.ashsBedroomEnter
	GamePositions.nextPosition = GamePositions.ashsBedroomExit
	Music.playMusic("garysTheme")
	GamePositions.fromAshsRoom = true
	Orientation.orientation = "down"
