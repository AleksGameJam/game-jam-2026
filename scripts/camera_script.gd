extends Node3D

@onready var handle = $"../../da handle"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#global_position = player.global_position + Vector3(0, 12, 18)
	#global_rotation.x = deg_to_rad(-17);
	#global_rotation.z = 0;
	#get_child(13)
	
	look_at(handle.position, Vector3.UP)
	pass
