extends RigidBody2D

@onready var timer: Timer = $Timer


@export var initial_speed = 500.0

func _ready() -> void:
	timer.start()

func _on_timer_timeout() -> void:
	print("TIMEOUT")
	var rand_number = randf()
	var rand_sign = -1 if rand_number < 0.5 else 1
	var rand_direction = randf_range(-0.55, 0.55)
	var impulse : Vector2 = Vector2(initial_speed * rand_sign, rand_direction * initial_speed)
	apply_impulse(impulse)

func invert_direction():
	print("INVERT DIRECTION")
	var current_speed = linear_velocity
	var impulse = Vector2(current_speed.x * -1, current_speed.y)
	apply_impulse(impulse)
