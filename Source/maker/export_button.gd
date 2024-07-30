extends Button

@onready var sub_viewport = %SubViewport
@onready var monster = %Monster
@onready var monster_container = %MonsterContainer


func _on_pressed():
	for child in monster_container.get_children():
		child.queue_free()
	var duplicate : Node2D = monster.duplicate() as Node2D
	duplicate.position = Vector2.ZERO
	monster_container.add_child(duplicate)
	var texture : ViewportTexture  = sub_viewport.get_texture()
	await get_tree().create_timer(1).timeout
	texture.get_image().save_png("user://export.png")
	
