extends Node

#Script para colocar el origen de los Pallets del juego en base a el tamaño de la pantalla.

func adjust_pallet_position(pallets: Array) -> void:
	var player1 = pallets[0]
	var player2 = pallets[1]
	var screen_size = get_viewport().size
	player1.position.y = screen_size.y / 2
	player1.position.x += 50
	
	player2.position.y = screen_size.y / 2
	player2.position.x = screen_size.x - 50
