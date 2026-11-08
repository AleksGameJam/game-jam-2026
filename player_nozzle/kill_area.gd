extends Area3D

var eat_sound_scene=preload("res://music/eat_sound.tscn")

func _on_body_entered(body: Node3D) -> void:
	if body is DustBunny or body is BeerCan:
		play_eat_sound()
		body.suck()


func play_eat_sound() -> void:
	var sound = eat_sound_scene.instantiate()
	get_tree().current_scene.add_child(sound)
	sound.global_position = global_position
	sound.play()
	sound.finished.connect(sound.queue_free)
	
