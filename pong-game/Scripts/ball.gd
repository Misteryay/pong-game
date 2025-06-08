extends CharacterBody2D

const MAX_ANGLE_BOUNCE = 1.8
const  INITIAL_SPEED = 300
const ACCELERATION = 40
var dir : Vector2
var current_speed : float

func new_match() -> void:
	$StartTimer.start()

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(dir * current_speed * delta)
	
	if collision:
		
		var collider = collision.get_collider()
		
		if !collider.is_in_group("pallet"):
			dir = Vector2(dir.x, dir.y * -1)
		else:
			dir = bounce_pallet(collider)
			current_speed += ACCELERATION
		
func _on_start_timer_timeout() -> void:
	var random_num = randf()
	var rand_sign = 1 if random_num > 0.5 else -1
	var random_dir = randf_range(-1, 1)
	current_speed = INITIAL_SPEED
	dir = Vector2(rand_sign, random_dir).normalized()

func bounce_pallet(collision: StaticBody2D) -> Vector2:
	var pallet_position = collision.position.y
	var ball_position = position.y
	var collision_distance = ball_position - pallet_position
	var scale_value = (collision_distance / 144.0) / 2 # 144 is the y size of pallets
	
	
	return Vector2(dir.x * -1, scale_value * MAX_ANGLE_BOUNCE)
	
	
