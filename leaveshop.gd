extends Area2D

var entered = false

func _on_body_entered(body: PhysicsBody2D):
	entered = true

func _on_body_exited(body):
	var entered = false

func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("enter"):
			get_tree().change_scene_to_file("res://survivors_game.tscn")
			
