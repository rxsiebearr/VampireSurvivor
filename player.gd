extends CharacterBody2D

signal health_depleted
@onready var po: AnimatedSprite2D = $Po
var health = 200

func _physics_process(delta:):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 750.0
	move_and_slide()

	if velocity.length() > 0.0:
		po.play("walk")
	else:
		po.play("idle")
	
	const DAMAGE_RATE = 100.0
	var overlappimg_mobs = %HurtBox.get_overlapping_bodies()
	if overlappimg_mobs.size() > 0:
		health -= DAMAGE_RATE * overlappimg_mobs.size() * delta
		%ProgressBar.value = health
		if health <= 0.0:
			health_depleted.emit()
