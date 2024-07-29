class_name SpriteButton
extends TextureButton

@onready var sprite_grid : SpriteSelectionGrid = $".."


# Called when the node enters the scene tree for the first time.
func _ready():
	pressed.connect(_on_button_pressed)

func _on_button_pressed():
	sprite_grid.update_sprite(texture_normal)
