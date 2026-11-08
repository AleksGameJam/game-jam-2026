extends RigidBody3D

var liftForce = -30

var baseSuckForce = 50;
var suckForce = baseSuckForce

var upDog = Vector3.UP

@onready var vacuum_sound = get_tree().get_first_node_in_group("vacuum_sound")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#var direction := (Vector3(input_dir.x, input_dir.y, 0)).normalized()
	if Input.is_action_just_pressed("turbo_mode"):
		upDog = transform.basis*Vector3.UP
		
		#if Input.is_action_just_released("rotate_left"):
	if !Input.is_action_pressed("turbo_mode"):
		upDog = transform.basis*Vector3.UP
		
	
	if Input.is_action_pressed("turbo_mode"):
		suckForce = 1000
		vacuum_sound.volume_db = -5.0
	else:
		vacuum_sound.volume_db = -15.0
		
		
	
	apply_central_force(upDog*suckForce)
	suckForce = baseSuckForce
	
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_down", "ui_up")
	#apply_torque(Vector3(input_dir.y*200, input_dir.x*-200, 0))
	apply_torque(Vector3(0, input_dir.x*liftForce, 0))
	

	#apply_central_force()
	pass
