extends Node2D

var gameStart = true

var nextPosition = Vector2(0, -30)
var garysHouseEnter = Vector2(-16, 53)
var garysHouseExit = Vector2(56, -51)
var professorsLabEnter = Vector2(0,84)
var professorsLabExit = Vector2(40,44)

func _ready():
	global_position = Vector2(0, -30)
