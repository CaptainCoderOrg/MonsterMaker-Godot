class_name SpriteSelectionGrid
extends GridContainer

var controller : ComponentController

func update_sprite(texture : Texture2D):
	controller.target.sprite.texture = texture
