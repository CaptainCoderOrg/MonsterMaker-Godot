class_name SpriteSelectionGrid
extends GridContainer

@onready var controller : ComponentController = owner

func update_sprite(texture : Texture2D):
	controller.target.sprite.texture = texture
