extends Node2D

@onready var adjust_assets_position: Node = $AdjustAssetsPosition
@onready var pong_ball: RigidBody2D = $PongBall
@onready var screen_collisions: Node = $ScreenCollisions
@onready var upper_limit: Area2D = $ScreenCollisions/UpperLimit
@onready var bottom_limit: Area2D = $ScreenCollisions/BottomLimit
@onready var left_goal: Area2D = $ScreenCollisions/LeftGoal
@onready var right_goal: Area2D = $ScreenCollisions/RightGoal


func _ready() -> void:
	var pallets = get_pallets()
	var collisions = []
	collisions.append(upper_limit)
	collisions.append(bottom_limit)
	collisions.append(left_goal)
	collisions.append(right_goal)
	adjust_assets_position.adjust_pallet_position(pallets)
	adjust_assets_position.adjust_ball_position(pong_ball)
	adjust_assets_position.adjust_collisions(collisions)
	
	
	
func get_pallets() -> Array:
	var children = get_children()
	var pallets = []
	for child in children:
		if child.is_in_group("pallet"):
			pallets.append(child)
	return pallets


func _on_ball_entered(ball: Node2D) -> void:
	print("EAWADASDWA")
	ball.invert_y_direction()
	


func _on_upper_limit_body_entered(ball: Node2D) -> void:
	print("EAWADASDWA")
	ball.invert_y_direction()
