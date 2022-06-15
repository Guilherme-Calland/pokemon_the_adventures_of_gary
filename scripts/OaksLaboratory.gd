extends "res://scripts/AreaTemplate.gd"

func _ready():
	Music.playMusic("professorOaksTheme")
	gary.global_position = GamePositions.professorsLabEnter
	GamePositions.nextPosition = GamePositions.professorsLabExit
	Orientation.orientation = "up"
