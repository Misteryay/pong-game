extends HBoxContainer

var scores: Array

func _ready() -> void:
	scores = [0,0]

func left_score(_body: Node2D):
	scores[1] += 1
	update_score()
	
func right_score(_body: Node2D):
	scores[0] += 1
	update_score()
	
func update_score():
	var left = $LeftScore
	var right = $RightScore
	
	left.text = str(scores[0])
	right.text = str(scores[1])
