class_name ComponentController
extends Control

@export var target : MonsterComponent
@onready var current_selection : Label = %"Current Selection"
@onready var sprite_grid_container = %SpriteGridContainer

signal target_changed(target : MonsterComponent)

func _ready():
	set_target(target)

func set_target(component : MonsterComponent):
	current_selection.text = component.component_name
	target = component
	target_changed.emit(target)
	for child in sprite_grid_container.get_children():
		child.queue_free()
	var grid : SpriteSelectionGrid = component.sprite_grid.instantiate() as SpriteSelectionGrid
	assert(grid is SpriteSelectionGrid, "Expected SpriteSelectionGrid.")
	grid.controller = self
	sprite_grid_container.add_child(grid)
