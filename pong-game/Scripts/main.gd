extends Node2D

@onready var adjust_pallet_position: Node = $AdjustPalletPosition
@onready var pong_ball: RigidBody2D = $PongBall
@onready var pallet: Node2D = $Pallet
@onready var pallet_2: Node2D = $Pallet2


func _ready() -> void:
	var pallets = get_pallets()
	adjust_pallet_position.adjust_pallet_position(pallets)
	
	
func get_pallets() -> Array:
	var children = get_children()
	var pallets = []
	for child in children:
		if child.is_in_group("pallet"):
			pallets.append(child)
	return pallets
