extends Node

@onready var pallet1: StaticBody2D = $"../Pallet"
@onready var pallet2: StaticBody2D = $"../Pallet2"
var screen_size
var pallet_size 

const SPEED = 400

func _ready() -> void:
	screen_size = get_viewport().size
	pallet_size = pallet1.get_node("CollisionShape2D").shape.size.y
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("Down1"):
		pallet1.position.y += SPEED * delta
	elif Input.is_action_pressed("Up1"):
		pallet1.position.y -= SPEED * delta
	

	if Input.is_action_pressed("Down2"):
		pallet2.position.y += SPEED * delta
	elif Input.is_action_pressed("Up2"):
		pallet2.position.y -= SPEED * delta
		
	# Limit Pallet movement to screen size
	pallet1.position.y = clamp(pallet1.position.y,
							   pallet_size / 2, 
							screen_size.y - pallet_size / 2) 

	pallet2.position.y = clamp(pallet2.position.y,
							   pallet_size / 2, 
							screen_size.y - pallet_size / 2) 
