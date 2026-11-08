extends RigidBody3D

var liftForce = -30

var baseSuckForce = 50;
var suckForce = baseSuckForce

var upDog = Vector3.UP

@onready var vacuum_sound = get_tree().get_first_node_in_group("vacuum_sound")
@onready var camera = get_viewport().get_camera_3d()

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

	var camera_right = camera.global_transform.basis.x
	var camera_forward = -camera.global_transform.basis.z

	# Holder bevegelsen langs gulvet
	camera_right.y = 0
	camera_forward.y = 0

	camera_right = camera_right.normalized()
	camera_forward = camera_forward.normalized()

	var move_direction = camera_right * input_dir.x + camera_forward * input_dir.y

	if move_direction.length() > 1.0:
		move_direction = move_direction.normalized()

	apply_central_force(move_direction * 100.0)

	#apply_central_force()
	pass
