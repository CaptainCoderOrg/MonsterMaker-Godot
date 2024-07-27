class_name MonsterController
extends Node2D

@onready var body : Sprite2D = %Body
@onready var left_arm_sprite : Sprite2D = %LeftArmSprite
@onready var right_arm_sprite : Sprite2D = %RightArmSprite
@onready var right_leg_sprite : Sprite2D = %RightLegSprite
@onready var left_leg_sprite : Sprite2D = %LeftLegSprite
@onready var left_antenna_sprite : Sprite2D = %LeftAntennaSprite
@onready var right_antenna_sprite : Sprite2D = %RightAntennaSprite
@onready var left_eye_sprite : Sprite2D = %LeftEyeSprite
@onready var right_eye_sprite : Sprite2D = %RightEyeSprite
@onready var left_brow : Sprite2D = %LeftBrow
@onready var right_brow : Sprite2D = %RightBrow
@onready var mouth_sprite : Sprite2D = %MouthSprite
@onready var nose_sprite : Sprite2D = %NoseSprite
@onready var snot_sprite : Sprite2D = %SnotSprite

func set_body(texture : Texture2D):
	body.texture = texture

func set_arm(texture : Texture2D):
	left_arm_sprite.texture = texture
	right_arm_sprite.texture = texture

func set_leg(texture : Texture2D):
	right_leg_sprite.texture = texture
	left_leg_sprite.texture = texture
	
func set_antenna(texture : Texture2D):
	left_antenna_sprite.texture = texture
	right_antenna_sprite.texture = texture

func set_eye(texture : Texture2D):
	left_eye_sprite.texture = texture
	right_eye_sprite.texture = texture
	
func set_brow(texture : Texture2D):
	left_brow.texture = texture
	right_brow.texture = texture

func set_mouth(texture : Texture2D):
	mouth_sprite.texture = texture

func set_nose(texture : Texture2D):
	nose_sprite.texture = texture

func set_snot(texture : Texture2D):
	snot_sprite.texture = texture

