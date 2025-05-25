extends Node2D

@onready var adjust_pallet_position: Node = $AdjustPalletPosition


func _ready() -> void:
	var pallets = get_pallets()
	adjust_pallet_position.adjust_pallet_position(pallets)
	
func get_pallets() -> Array:
	var children = get_children()
	var pallets = []
	for child in children:
		if child is CharacterBody2D:
			pallets.append(child)
	return pallets
