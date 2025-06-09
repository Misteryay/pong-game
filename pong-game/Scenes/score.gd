extends HBoxContainer

var scores: Array

func new_match():
	scores = [0,0]

func left_score(body: Node2D):
	scores[0] += 1
	update_score()
	
func right_score(body: Node2D):
	scores[1] += 1
	update_score()
	
func update_score():
	var left_score = $LeftScore
	var right_score = $RightScore
	
	left_score.text = str(scores[0])
	right_score.text = str(scores[1])
