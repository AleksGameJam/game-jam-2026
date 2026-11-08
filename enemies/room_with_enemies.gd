extends Node3D

func _ready() -> void:
	$"MayTheDust".playing = true
	
	$MainSuckyTheme.autoplay = true


func _physics_process(_delta):
	await get_tree().create_timer(1.0).timeout
	print(get_all_enemies().size())
	if get_all_enemies().size() == 0:
		print("you won")
	

func get_all_enemies():
	var all_nodes: Array[Node] = []
	var filtered_nodes = []
	var current_scene: Node = $Stuff
	
	if current_scene:
		_gather_nodes_recursive(current_scene, all_nodes)
	
	for node in all_nodes:
		if is_instance_of(node, DustBunny) or is_instance_of(node, BeerCan):
			filtered_nodes.append(node)
	
	return filtered_nodes


## Helper function to recursively collect children
func _gather_nodes_recursive(current_node: Node, list: Array[Node]) -> void:
	list.append(current_node)
	for child in current_node.get_children():
		_gather_nodes_recursive(child, list)
