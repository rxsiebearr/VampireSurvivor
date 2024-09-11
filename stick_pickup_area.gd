extends Area2D

var entered = false
func _process(delta):
	if entered == true:
		print("pickup")
		
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		entered = true
		
func _on_body_exited(body: Node2D) -> void:
	entered = false
	queue_free()
