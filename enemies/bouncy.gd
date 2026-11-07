extends RigidBody3D

class_name DustBunny

@export var constant_speed: float = 8.0
@export var spin_speed: float = 8.0 # How fast it tumbles


func _ready():
	var starting_direction = Vector3(
		randf_range(-1, 1),
		randf_range(-1, 1),
		randf_range(-1, 1)
	).normalized()
	linear_velocity = starting_direction.normalized() * constant_speed
	# 2. Random Starting Orientation (Facing a random way)
	rotation = Vector3(randf_range(0, TAU), randf_range(0, TAU), randf_range(0, TAU))
	
	# 3. Random Tumble/Spin Vector
	var random_spin_axis = Vector3(randf_range(-1,1), randf_range(-1,1), randf_range(-1,1)).normalized()
	angular_velocity = random_spin_axis * spin_speed

func _integrate_forces(state: PhysicsDirectBodyState3D) -> void:
	# 3. Force the 3D velocity vector to stay at exactly constant_speed
	if state.linear_velocity.length() > 0:
		state.linear_velocity = state.linear_velocity.normalized() * constant_speed

	# Keep the tumble/spin speed perfect (forces engine not to slow down rotation)
	if state.angular_velocity.length() > 0:
		state.angular_velocity = state.angular_velocity.normalized() * spin_speed
