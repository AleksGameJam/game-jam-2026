extends Node3D

const SUCKER = preload("uid://bjgkfmp86lhik")

@onready var label_3d: Label3D = $"../Label3D"

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready():
	animation_player.play("intro")


func _on_button_pressed() -> void:
	queue_free()
	label_3d.has_started = true
	$"../SpoopyMusic".volume_db = -100
	$"../SuckWar".playing = true

func _on_skip_pressed() -> void:
	get_tree().change_scene_to_packed(SUCKER)
