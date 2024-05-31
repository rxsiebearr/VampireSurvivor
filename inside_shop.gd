extends Node2D

func _ready():
	$BackgroundMusic.play()
	
func _on_player_health_depleted():
	$BackgroundMusic.stop()
	$DeathSound.play()
	%GameOver.visible = true
	get_tree().set_pause(true)
	
func _on_respawn_pressed():
	if get_tree():
		get_tree().set_pause(false)
	get_tree().change_scene_to_file("res://start_menu.tscn")
	
