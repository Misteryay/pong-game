extends Node

@onready var upper_limit: Area2D = $UpperLimit
@onready var bottom_limit: Area2D = $BottomLimit
@onready var left_goal: Area2D = $LeftGoal
@onready var right_goal: Area2D = $RightGoal



func get_collisions():
	var collisions = []
	collisions.append(upper_limit)
	collisions.append(bottom_limit)
	collisions.append(left_goal)
	collisions.append(right_goal)
	return collisions
