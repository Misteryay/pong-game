extends RigidBody2D

@export var speed = 500.0

func _ready() -> void:
	contact_monitor = true
	max_contacts_reported = 4  # Ajusta según lo necesario
	var timer : Timer = Timer.new()
	timer.wait_time = 2
	timer.one_shot = true
	timer.connect("timeout", Callable(self, "_on_timeout"))
	add_child(timer)
	timer.start()
	
func _process(delta: float) -> void:
	if position.y < (get_viewport().size.y - 50) or position.y > (get_viewport().size.y + 50):
		var current_velocity = linear_velocity
		var inverted_velocity = Vector2(current_velocity.x, -current_velocity.y)
		linear_velocity = inverted_velocity
		

func _on_timeout():
	var random_sign = -1 if randf() < 0.5 else 1
	var random_vertical = randf_range(0.25, 0.75)
	var impulse = Vector2(speed * random_sign, speed * random_vertical)
	apply_central_impulse(impulse)

func invert_direction() -> void:
	var current_velocity = linear_velocity
	var inverted_velocity = Vector2(-current_velocity.x, current_velocity.y)
	linear_velocity = inverted_velocity
