class_name Node2DSpacingSlider
extends HSlider

@onready var controller : ComponentController = owner

func _ready():
	value = controller.target.position.x
	value_changed.connect(_on_value_changed)

func _on_value_changed(value):
	controller.target.position.x = value
