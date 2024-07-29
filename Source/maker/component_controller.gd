class_name ComponentController
extends Control

@export var target : MonsterComponent
@onready var current_selection : Label = %"Current Selection"

signal target_changed(target : MonsterComponent)

func _ready():
	set_target(target)

func set_target(component : MonsterComponent):
	current_selection.text = component.component_name
	target = component
	target_changed.emit(target)
