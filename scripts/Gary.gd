extends KinematicBody2D

var motion = Vector2(0,0)
export var speed = 25
var orientation = "down"
onready var animationPlayer = $Animation/AnimationPlayer
onready var sprite = $Animation/Sprite
var readyToChangeArea = false
var nextArea = "garysHouse"
var nextAreaDoorOrientation = "down"

signal onAreaChange

func run():
	if buttonIsPressed("down"):
		motion.y = speed
		orientation = "down"
	elif buttonIsPressed("up"):
		motion.y = -speed
		orientation = "up"
	else:
		motion.y = 0
	if buttonIsPressed("left"):
		motion.x = -speed
		orientation = "horizontal"
		sprite.flip_h = true
	elif buttonIsPressed("right"):
		motion.x = speed
		orientation = "horizontal"
		sprite.flip_h = false
	else:
		motion.x = 0
		
	if isIdle():
		playAnimation("idle")
	elif isWalking():
		playAnimation("walking")
			
	move_and_slide(motion, Vector2(0, -1))

func _input(_event):
	if buttonIsPressed(nextAreaDoorOrientation) and readyToChangeArea:
		emit_signal("onAreaChange", nextArea)

func buttonIsPressed(button):
	if button == "down":
		return Input.is_action_pressed("down") and not Input.is_action_pressed("up") and not Input.is_action_pressed("left") and not Input.is_action_pressed("right")
	elif button == "up":
		return Input.is_action_pressed("up") and not Input.is_action_pressed("down") and not Input.is_action_pressed("left") and not Input.is_action_pressed("right")
	elif button == "right":
		return Input.is_action_pressed("right") and not Input.is_action_pressed("left") and not Input.is_action_pressed("up") and not Input.is_action_pressed("down")
	elif button == "left":
		return Input.is_action_pressed("left") and not Input.is_action_pressed("right")  and not Input.is_action_pressed("up") and not Input.is_action_pressed("down")

func isIdle():
	return motion == Vector2(0,0)

func isWalking():
	return not isIdle()

func playAnimation(movement):
	var animation = movementPlusOrientationString(movement)
	animationPlayer.play(animation)

func movementPlusOrientationString(movement):
	return movement + orientation[0].to_upper() + str(orientation.trim_prefix(str(orientation[0])))

func _on_ChangeAreaTrigger_body_entered(_body, area, doorOrientation):
	readyToChangeArea = true
	nextArea = area
	nextAreaDoorOrientation = doorOrientation

func _on_ChangeAreaTrigger_body_exited(_body):
	readyToChangeArea = false
