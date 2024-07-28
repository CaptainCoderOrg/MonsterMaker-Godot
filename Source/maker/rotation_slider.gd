class_name Node2DRotationSlider
extends HSlider

@export var node : Node2D

func _ready():
	value_changed.connect(_on_value_changed)

func _on_value_changed(value):
	node.rotation_degrees = value
