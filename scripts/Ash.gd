extends Node2D

onready var animationPlayer = $AnimationPlayer

func _ready():
	dance()

func dance():
	animationPlayer.play("idle")
	animationPlayer.queue("dancing")
	animationPlayer.queue("dancing")
	animationPlayer.queue("dancing")
	animationPlayer.queue("dancing2")
	animationPlayer.queue("dancing2")
	animationPlayer.queue("dancing2Short")
	animationPlayer.queue("dancing3")
	animationPlayer.queue("dancing2Loop")
	
