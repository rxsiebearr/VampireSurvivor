extends Node

func add_to_global_group(node: Node):
	node.add_to_group("market")
	
func is_in_global_group(node: Node):
	node.is_in_group("market")
