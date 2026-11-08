extends Camera3D
@onready var henry: Node3D = $"../../.."

@export var offset: Vector3 = Vector3(0, 0.4, -2.0) # Position in front of the henry
var look_down_angle = 15

func _process(_delta):
	if henry:
		# Position the camera in front of the henry, looking back at them
		global_position = henry.global_transform.origin + (henry.global_transform.basis * offset)
		
		# Look at the henry's head area
		var look_at_target = henry.global_transform.origin + Vector3(0, 1.5, 0)
		look_at(look_at_target, Vector3.UP)
		rotate_object_local(Vector3.RIGHT, deg_to_rad(-look_down_angle))
