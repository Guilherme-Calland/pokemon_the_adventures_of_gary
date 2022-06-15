extends "res://scripts/AreaTemplate.gd"

func _ready():
	Music.playMusic("palletTownTheme")
	gary.global_position = GamePositions.nextPosition
	Orientation.orientation = "down"


