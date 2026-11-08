extends RigidBody3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("rotate_left"):
		apply_torque(Vector3(2, 0, 0))
		#rotation.y = rotation.y + 0.001
	if Input.is_action_pressed("rotate_right"):
		apply_torque(Vector3(-2, 0, 0))
		#rotation.y = rotation.y - 0.001
	pass
