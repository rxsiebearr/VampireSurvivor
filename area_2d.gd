extends Area2D

@onready var camera = get_node("/root/InsideMarket/Player/Camera2D")
@onready var gun = get_node("/root/InsideMarket/Player/Gun")
@onready var health = get_node("/root/InsideMarket/Player/ProgressBar")

func _on_body_entered(body):
	print("Body entered: %s" % body.get_path())
	camera.enabled = false
	gun.queue_free()
	health.queue_free()
	
func _on_body_exited(body):
	print("Body exited: %s" % body.get_path())
	camera.enabled = true
	
