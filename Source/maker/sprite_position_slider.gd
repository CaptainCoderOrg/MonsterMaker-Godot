class_name Node2DPositionSlider
extends HSlider

@export var node : Node2D

func _ready():
	value = node.position.y
	value_changed.connect(_on_value_changed)

func _on_value_changed(value):
	node.position.y = value
