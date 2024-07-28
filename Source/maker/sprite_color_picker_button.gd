class_name Node2DColorPickerButton
extends ColorPickerButton

@onready var controller : ComponentController = owner

func _ready():
	color_changed.connect(_on_color_changed)

func _on_color_changed(color):
	controller.target.modulate = color
