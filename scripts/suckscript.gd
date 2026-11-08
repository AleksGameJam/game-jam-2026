extends RigidBody3D

var liftForce = -30

var baseSuckForce = 2;
var suckForce = baseSuckForce

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#var direction := (Vector3(input_dir.x, input_dir.y, 0)).normalized()
	if Input.is_action_pressed("rotate_left"):
		suckForce = 1000
		
	
	apply_central_force(transform.basis*Vector3.UP*suckForce)
	suckForce = baseSuckForce
	
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_down", "ui_up")
	#apply_torque(Vector3(input_dir.y*200, input_dir.x*-200, 0))
	apply_torque(Vector3(0, input_dir.x*liftForce, 0))
	

	#apply_central_force()
	pass
