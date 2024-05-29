extends Area2D

var entered = false

func _on_body_entered(body: PhysicsBody2D):
	if body.is_in_group("store"):
		entered = true

func _on_body_exited(body):
	entered = false

func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("enter"):
			get_tree().change_scene_to_file("res://inside_shop.tscn")
