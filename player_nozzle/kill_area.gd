extends Area3D


func _on_body_entered(body: Node3D) -> void:
	if body is DustBunny or body is BeerCan:
		body.suck()
