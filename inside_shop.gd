extends Node2D

func _ready():
	#$BackgroundMusic.play()
	pass
	
func _on_player_health_depleted():
	#$BackgroundMusic.stop()
	#$DeathSound.play()
	%GameOver.visible = true
	get_tree().paused = true
