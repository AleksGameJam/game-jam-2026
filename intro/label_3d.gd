extends Label3D

@export var speed: float = 0.2 # Units per second
var has_started = false

func _process(delta: float) -> void:
	# Move up along the node's local Y-axis gradually
	if has_started:
		translate(Vector3.UP * speed * delta)
