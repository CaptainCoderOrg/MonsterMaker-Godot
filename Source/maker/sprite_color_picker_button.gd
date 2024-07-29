class_name Node2DColorPickerButton
extends ColorPickerButton

@onready var controller : ComponentController = owner

func _ready():
	color_changed.connect(_on_color_changed)
	controller.target_changed.connect(_update_target)

func _on_color_changed(color):
	controller.target.modulate = color
	
func _update_target(target : MonsterComponent):
	color = controller.target.modulate
