class_name Node2DRotationSlider
extends HSlider

@onready var controller : ComponentController = owner

func _ready():
	value_changed.connect(_on_value_changed)
	controller.target_changed.connect(_update_target)

func _on_value_changed(value):
	controller.target.rotation_degrees = value

func _update_target(target : MonsterComponent):
	value = target.rotation_degrees
