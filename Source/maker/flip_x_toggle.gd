class_name FlipXToggle
extends CheckButton

@export var target : Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if target.scale.x < 0:
		button_pressed = true
	toggled.connect(flip_x)


func flip_x(flipped : bool):
	if flipped:
		target.scale.x = -1
	else:
		target.scale.x = 1
