extends Node


func _ready() -> void:
	
	var screen_size = get_viewport().size
	var left_pallet = $"../Pallet"
	var right_pallet = $"../Pallet2"
	
	left_pallet.position.x = 30
	left_pallet.position.y = screen_size.y / 2
	
	right_pallet.position.x = screen_size.x - 30
	left_pallet.position.y = screen_size.y / 2
	
