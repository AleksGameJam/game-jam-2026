extends Node3D

@onready var handle = $"../../da handle"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	look_at(handle.global_position, Vector3.UP)
	pass
