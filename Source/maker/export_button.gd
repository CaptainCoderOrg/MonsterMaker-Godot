extends Button

@onready var sub_viewport = %SubViewport
@onready var monster = %Monster
@onready var monster_container = %MonsterContainer
@onready var file_dialog :FileDialog = %FileDialog

func generate_texture() -> ViewportTexture:
	for child in monster_container.get_children():
		child.queue_free()
	var duplicate : Node2D = monster.duplicate() as Node2D
	duplicate.position = Vector2.ZERO
	monster_container.add_child(duplicate)
	var texture : ViewportTexture  = sub_viewport.get_texture()
	await get_tree().create_timer(1).timeout
	return texture

func download_image():
	var texture = await generate_texture()
	var buf = texture.get_image().save_png_to_buffer()
	JavaScriptBridge.download_buffer(buf, "export.png", "image/png")

func export_file(path : String):
	var texture = await generate_texture()
	texture.get_image().save_png(path)
	
func _on_pressed():
	if OS.has_feature("web"):
		download_image()
	else:
		file_dialog.show()

func _on_file_dialog_confirmed():
	export_file(file_dialog.current_path)
