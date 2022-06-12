extends Sprite

onready var gary = $YSort/Gary

func _ready():
	gary.connect("onAreaChange", self, "changeArea")
	Music.playMusic("palletTownTheme")

func _process(delta):
#	OS.window_size = Vector2(640,640);
	useRealGamePixelResolution()
	gary.run()

func useRealGamePixelResolution():
	$"/root".size = Vector2(640,640);

func changeArea(area):
	var areaPath = "res://scenes/" + toCapitalFirstLetter(area) + ".tscn"
	get_tree().change_scene(areaPath)

func toCapitalFirstLetter(word):
	return word[0].to_upper() + str(word.trim_prefix(str(word[0])))
