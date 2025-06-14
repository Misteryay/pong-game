extends Timer

func _on_score(_body: Node2D):
	$Goal.play()
	start()
