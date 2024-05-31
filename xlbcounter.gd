extends Control

var score = 0
@onready var label = get_node("/root/Game/CanvasLayer2/Counter/Label")
var label_initialized = false 

func _process(delta: float) -> void:
	if not label_initialized:
		initialize_label()

func initialize_label() -> void:
	label = get_node("/root/Game/CanvasLayer2/Counter/Label")
	if label != null:
		label_initialized = true
		label.text = "x" + str(score)

func set_score(new_score: int) -> void:
	score += 1 
	if label_initialized and label != null:
		label.text = "x" + str(score)

func reset_score() -> void:
	score = 0
	set_score(score)
