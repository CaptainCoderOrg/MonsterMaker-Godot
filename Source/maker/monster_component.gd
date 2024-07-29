class_name MonsterComponent
extends Node2D

@export var component_name : String
@export var sprite : Sprite2D
@export var controller : ComponentController

func _on_click():
	controller.set_target(self)
