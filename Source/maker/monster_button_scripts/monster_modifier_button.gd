class_name MonsterModifierButton
extends TextureButton

@onready var controller : MonsterController = %Monster


func apply():
	controller.set_body(texture_normal)

func _on_pressed():
	apply()
