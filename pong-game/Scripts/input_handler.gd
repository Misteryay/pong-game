extends Node

@onready var pallet1: StaticBody2D = $"../Pallet"
@onready var pallet2: StaticBody2D = $"../Pallet2"
@onready var ball: CharacterBody2D = $"../Ball"

var screen_size
var pallet_size 

const SPEED = 400

var isMultiplayer : bool

func _ready() -> void:
	screen_size = get_viewport().size
	pallet_size = pallet1.get_node("CollisionShape2D").shape.size.y
	
func player1_input(delta: float) -> void:
	if Input.is_action_pressed("Down1"):
		pallet1.position.y += SPEED * delta
	elif Input.is_action_pressed("Up1"):
		pallet1.position.y -= SPEED * delta
		
	pallet1.position.y = clamp(pallet1.position.y,
							   pallet_size / 2, 
							screen_size.y - pallet_size / 2) 
	
func player2_input(delta: float) -> void:
	if Input.is_action_pressed("Down2"):
		pallet2.position.y += SPEED * delta
	elif Input.is_action_pressed("Up2"):
		pallet2.position.y -= SPEED * delta
	
	pallet2.position.y = clamp(pallet2.position.y,
							   pallet_size / 2, 
							screen_size.y - pallet_size / 2) 
	
func computer_movement(delta: float) -> void:
	pallet2.position.y -= calculate_computer_movement() * delta * SPEED
	
	pallet2.position.y = clamp(pallet2.position.y,
							   pallet_size / 2, 
							screen_size.y - pallet_size / 2) 

func calculate_computer_movement():
	var pallet_position = pallet2.position.y
	var distance = pallet_position - ball.position.y
	var move_by = 0
	
	if distance > 3 or distance < -3:
		move_by = (distance) / abs(distance)
	
	return move_by
	
