class_name FlipXToggle
extends CheckButton

@onready var controller : ComponentController = owner

# Called when the node enters the scene tree for the first time.
func _ready():
	if controller.target.scale.x < 0:
		button_pressed = true
	toggled.connect(flip_x)


func flip_x(flipped : bool):
	if flipped:
		controller.target.scale.x = -1
	else:
		controller.target.scale.x = 1
