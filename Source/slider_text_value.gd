class_name SliderTextValue
extends LineEdit

@export var target : Slider

# Called when the node enters the scene tree for the first time.
func _ready():
	target.value_changed.connect(_on_slider_changed)
	text_submitted.connect(validate_text)

func _on_slider_changed(value : float):
	text = str(value)

func validate_text(input : String):
	if input.is_valid_int():
		target.value = int(input)
	else:
		text = str(target.value)
