extends Node2D

@onready var sprite_2d = $Sprite2D
var my_goal = 10

func _ready():
	$BackgroundMusic.play()
	
#func _process(float) -> void:
	#if Xlbcounter.score >= my_goal:
		#sprite_2d.visible = true
func spawn_mob():
	var new_mob = preload("res://mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)


func _on_timer_timeout():
	spawn_mob()

func _on_player_health_depleted():
	$BackgroundMusic.stop()
	$DeathSound.play()
	%GameOver.visible = true
	get_tree().paused = true
	
