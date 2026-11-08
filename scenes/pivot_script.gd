extends Node3D

@onready var handle = $"../da handle"
@onready var camera = $Camera3D2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:	
	
	#var angle = camera.global_position.signed_angle_to(handle.global_position, Vector3.UP)
	var angle = handle.global_position.signed_angle_to(camera.global_position, Vector3.UP)

	rotation.y = move_toward(rotation.y, angle, delta);
	pass
