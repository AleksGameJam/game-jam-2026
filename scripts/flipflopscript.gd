extends RigidBody3D

var force = 0.1;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#var input_dir := Input.get_vector("ui_left", "ui_right", "ui_down", "ui_up")
	#apply_torque(Vector3(input_dir.x*2000, 0, input_dir.y*2000))
	
	#rotate_x(rotation.x + (input_dir.x * force));
	#rotate_z(rotation.z + (input_dir.y * force));
	
	#rotate_toward(rotation, rotation + Vector3(input_dir.x, input_dir.y, 0), force);
	
	#rotation.x = rotate_toward(rotation.x, deg_to_rad(input_dir.x), delta*100);
	#rotation.z = rotate_toward(rotation.z, deg_to_rad(input_dir.y), delta*100);
	#rotation.y = rotate_toward(rotation.y, rotation.y + input_dir.x, delta);

	#rotation.z = rotation.z + (input_dir.y * force);
	
	
	pass
