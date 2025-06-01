extends CharacterBody2D

var initial_speed = 300
const ACCELERATION = 40
var dir : Vector2
var current_speed : float

func new_match() -> void:
	$StartTimer.start()

func _physics_process(delta: float) -> void:
	move_and_collide(dir * current_speed * delta)

func _on_start_timer_timeout() -> void:
	var random_num = randf()
	var rand_sign = 1 if random_num > 0.5 else -1
	var random_dir = randf_range(-1, 1)
	current_speed = initial_speed
	dir = Vector2(rand_sign, random_dir).normalized()
