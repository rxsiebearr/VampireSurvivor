extends Area2D

func _on_body_entered(body):
	body.add_to_group("market")
	queue_free()
