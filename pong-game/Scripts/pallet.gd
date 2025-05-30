extends Node2D


@export var speed = 200.0

func _ready() -> void:
	Input.MouseMode.MOUSE_MODE_CAPTURED


func _physics_process(delta: float) -> void:
	if position.y > (get_viewport().size.y - 100):
		position.y = (get_viewport().size.y - 100)
	elif position.y < 100:
		position.y = 100


func _on_area_2d_ball_entered(ball: Node2D) -> void:
	ball.invert_x_direction()
