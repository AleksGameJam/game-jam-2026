extends Label3D
const ROOM_WITH_ENEMIES = preload("uid://dgje2vy5anynv")

@export var speed: float = 0.2 # Units per second
var has_started = false

func _process(delta: float) -> void:
	# Move up along the node's local Y-axis gradually
	if has_started:
		translate(Vector3.UP * speed * delta)
		await get_tree().create_timer(33.0).timeout
		$"../Continue".visible = true


func _on_continue_pressed() -> void:
	get_tree().change_scene_to_packed(ROOM_WITH_ENEMIES)
