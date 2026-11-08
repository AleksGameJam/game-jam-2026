extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_down", "ui_up")
	#apply_torque(Vector3(0, 0, input_dir.y*-400));
	apply_central_force(Vector3(0, input_dir.y*200, 0))
	pass
