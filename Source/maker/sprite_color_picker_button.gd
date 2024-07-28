class_name Node2DColorPickerButton
extends ColorPickerButton

@export var node : Node2D

func _ready():
	color_changed.connect(_on_color_changed)

func _on_color_changed(color):
	node.modulate = color
