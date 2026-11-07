extends Node3D

@export var shake_intensity: float = 0.02
@export var shake_speed: float = 60.0 # How many times it shifts per second

var original_position: Vector3
var time_accumulator: float = 0.0

func _ready() -> void:
	# Save the baseline position so it doesn't drift away
	original_position = position

func _process(delta: float) -> void:
	time_accumulator += delta
	
	# Control how fast the position updates
	if time_accumulator >= (1.0 / shake_speed):
		time_accumulator = 0.0
		
		# Generate a completely random offset in 3D space
		var offset = Vector3(
			randf_range(-shake_intensity, shake_intensity),
			randf_range(-shake_intensity, shake_intensity),
			randf_range(-shake_intensity, shake_intensity)
		)
		
		position = original_position + offset
