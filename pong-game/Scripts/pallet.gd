extends CharacterBody2D

# Se tienen variables de los nodos para poder acceder a ellos.
@onready var auto_adjust_collision: Node = $AutoAdjustCollision
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

@export var speed = 200.0

func _ready() -> void:
	Input.MouseMode.MOUSE_MODE_CAPTURED

func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("Down1"):
		velocity.y += speed
	if Input.is_action_pressed("Up1"):
		velocity.y -= speed
		
	move_and_slide()
