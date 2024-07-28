class_name Node2DRotationSlider
extends HSlider

@onready var controller : ComponentController = owner

func _ready():
	value_changed.connect(_on_value_changed)

func _on_value_changed(value):
	controller.target.rotation_degrees = value
