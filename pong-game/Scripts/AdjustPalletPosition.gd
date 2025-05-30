extends Node

#Script para colocar el origen de los Assets del juego en base a el tamaño de la pantalla.

func adjust_pallet_position(pallets: Array) -> void:
	var player1 = pallets[0]
	var player2 = pallets[1]
	var screen_size = get_viewport().size
	player1.position.y = screen_size.y / 2
	player1.position.x += 75
	
	player2.position.y = screen_size.y / 2
	player2.position.x = screen_size.x - 75
	
func adjust_ball_position(ball: RigidBody2D):
	var screen_size = get_viewport().size
	ball.position.x = screen_size.x / 2
	ball.position.y = screen_size.y / 2
	
func adjust_collisions(Collisions: Array):
	print(Collisions.size())
	var screen_size = get_viewport().size
	
	# Upper Collision
	var upper_limit = Collisions[0]
	upper_limit.position.x = screen_size.x / 2
	upper_limit.position.y = 0
	var upper_rect: RectangleShape2D = upper_limit.get_child(0).shape
	upper_rect.size = Vector2(screen_size.x, 5)
	
	# Bottom Collision
	var bottom_limit = Collisions[0]
	bottom_limit.position.x = screen_size.x / 2
	bottom_limit.position.y = screen_size.y
	var bottom_rect: RectangleShape2D = bottom_limit.get_child(0).shape
	bottom_rect.size = Vector2(screen_size.x, 5)
	
	# Left Collision
	var left_goal = Collisions[0]
	left_goal.position.x = 0
	left_goal.position.y = screen_size.y / 2
	var left_rect: RectangleShape2D = upper_limit.get_child(0).shape
	left_rect.size = Vector2(10, screen_size.y)
	
	# right Collision
	var right_goal = Collisions[0]
	right_goal.position.x = screen_size.x
	right_goal.position.y = screen_size.y / 2
	var right_rect: RectangleShape2D = upper_limit.get_child(0).shape
	right_rect.size = Vector2(10, screen_size.y)
	
	
	
	
