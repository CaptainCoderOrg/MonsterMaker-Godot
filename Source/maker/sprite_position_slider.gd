class_name Node2DPositionSlider
extends HSlider

@onready var controller : ComponentController = owner

func _ready():
	value = controller.target.position.y
	value_changed.connect(_on_value_changed)

func _on_value_changed(value):
	controller.target.position.y = value
