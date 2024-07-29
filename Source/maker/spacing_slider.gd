class_name Node2DSpacingSlider
extends HSlider

@onready var controller : ComponentController = owner

func _ready():
	value = controller.target.position.x
	value_changed.connect(_on_value_changed)
	controller.target_changed.connect(_update_target)

func _on_value_changed(value):
	controller.target.position.x = value

func _update_target(target : MonsterComponent):
	value = target.position.x
