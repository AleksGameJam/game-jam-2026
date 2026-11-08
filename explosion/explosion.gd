extends Node3D

@onready var debris = $Debris
@onready var fire = $Fire
@onready var smoke = $Smoke

func _ready() -> void:
	debris.emitting = true
	fire.emitting = true
	smoke.emitting = true
	await get_tree().create_timer(2).timeout
	queue_free()
