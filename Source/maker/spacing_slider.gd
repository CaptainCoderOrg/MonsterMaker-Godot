class_name Node2DSpacingSlider
extends HSlider

@export var node : Node2D

func _ready():
	value = node.position.x
	value_changed.connect(_on_value_changed)

func _on_value_changed(value):
	node.position.x = value
