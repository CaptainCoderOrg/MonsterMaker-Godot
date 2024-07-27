extends ColorPickerButton

@onready var body_grid : GridContainer = $"../BodyGrid"
@onready var monster : MonsterController = %Monster

func _ready():
	color = body_grid.modulate

func _on_color_changed(color):
	body_grid.modulate = color
	monster.body.self_modulate = color
