extends CharacterBody2D

var health = 3
@onready var player = get_node("/root/Game/Player")
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
var score = Xlbcounter.score 
func _ready():
	animated_sprite_2d.play("walk")
	

func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 500.0
	move_and_slide()

func take_damage():
	health -= 1
	animated_sprite_2d.play("hurt")
	
	if health == 0:
		var current_score = Xlbcounter.score
		print("Current Score:", current_score)
		Xlbcounter.set_score(current_score + 1) 
		print("New Score:", Xlbcounter.score)
		queue_free()
		
		const SMOKE_SCENE = preload("res://smoke_explosion/smoke_explosion.tscn")
		var smoke = SMOKE_SCENE.instantiate()
		get_parent().add_child(smoke)
		smoke.global_position = global_position

