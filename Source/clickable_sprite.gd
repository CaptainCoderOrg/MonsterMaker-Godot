class_name ClickableSprite
extends Sprite2D

@onready var highlight = $Highlight
@onready var collision_shape_2d = $Area2D/CollisionShape2D
@onready var sprite = $"."

signal clicked

# Called when the node enters the scene tree for the first time.
func _ready():
	texture_changed.connect(update_shape)
	var parent = get_parent()
	assert(parent is MonsterComponent, "Clickable Sprite' parent must be a MonsterComponent")
	clicked.connect(get_parent()._on_click)
	update_shape()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func update_shape():
	var shape = RectangleShape2D.new()
	shape.size = get_rect().size
	collision_shape_2d.shape = shape
	highlight.texture = sprite.texture

func _on_area_2d_input_event(viewport, event : InputEvent, shape_idx):
	if event is InputEventMouse and event.is_pressed():
		clicked.emit()

func _on_area_2d_mouse_entered():
	highlight.visible = true

func _on_area_2d_mouse_exited():
	highlight.visible = false
