class_name SpriteColorPickerButton
extends ColorPickerButton

@export var sprites : Array[Sprite2D]

func _on_color_changed(color):
	print("change color")
	for sprite in sprites:
		sprite.self_modulate = color
