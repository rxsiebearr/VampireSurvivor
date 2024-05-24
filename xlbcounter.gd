extends Control

var score = 0
@onready var label = get_node("/root/Game/Player/Counter/Label")

func set_score(new_score: int) -> void:
	score += 1
	label.text = "x" + str(score)
