extends Sprite

onready var gary = $YSort/Gary

func _process(delta):
#	OS.window_size = Vector2(640,640);
	useRealGamePixelResolution()
	gary.run()

func useRealGamePixelResolution():
	$"/root".size = Vector2(128,128);
