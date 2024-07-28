class_name Node2DPositionSlider
extends HSlider

@export var nodes : Array[Node2D]

func _ready():
	value_changed.connect(_on_value_changed)

func _on_value_changed(value):
	for node in nodes:
		node.position.y = value
