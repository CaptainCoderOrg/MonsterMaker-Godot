class_name Node2DRotationSlider
extends HSlider

@export var left_node : Node2D
@export var right_node : Node2D

func _ready():
	value_changed.connect(_on_value_changed)

func _on_value_changed(value):
	left_node.rotation_degrees = -value
	right_node.rotation_degrees = value
