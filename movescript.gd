extends RigidBody3D

var force := 200;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input_dir := Input.get_vector("ui_left", "ui_right", "ui_down", "ui_up")
	#var direction := (transform.basis * Vector3(input_dir.x, input_dir.y, 0)).normalized()
	var direction := (Vector3(input_dir.x, input_dir.y, 0)).normalized()
	
	#var direction := (transform.basis * Vector3(-rotation.x * input_dir.x, transform.basis.looking_at(Vector3.UP) * input_dir.y, 0)).normalized()
	
	#apply_force(Vector3(0, input_dir.y, input_dir.x)*200)
	#apply_central_force(direction.rotated(Vector3.RIGHT, Vector3.UP.angle_to(self.transform.origin.normalized()))*200);
	#apply_central_impulse()
	apply_central_force(direction*force)
	
	#global_position = Vector3(global_position.x + input_dir.x, global_position.y + input_dir.y, 0);

	
	pass
