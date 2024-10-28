extends Node2D

@onready var market = $Market
var my_goal = 10

func _ready():
	$BackgroundMusic.play()
func _process(float) -> void:
	if Xlbcounter.score >= my_goal:
		market.visible = true
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
	get_tree().set_pause(true)
	
func _on_respawn_pressed():
	if get_tree():
		get_tree().set_pause(false)
	get_tree().change_scene_to_file("res://start_menu.tscn")
	Xlbcounter.score = 0
