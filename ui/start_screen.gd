extends Node3D

@onready var label_3d: Label3D = $"../Label3D"

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready():
	animation_player.play("intro")


func _on_button_pressed() -> void:
	queue_free()
	label_3d.has_started = true
