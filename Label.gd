extends Label

var score = 0

func set_score(new_score: int) -> void:
	score = new_score
	$Label.text = "x" + str(score)
