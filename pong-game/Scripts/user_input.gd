extends Node

var speed = 300.0 
var player1
var player2

func _ready() -> void:
	var pallets = get_parent().get_pallets()
	player1 = pallets[0]
	player2 = pallets[1]
	
func _physics_process(delta: float) -> void:
	
	if Input.is_action_pressed("Down1"):
		player1.position.y += speed * delta
	if Input.is_action_pressed("Up1"):
		player1.position.y -= speed * delta
		
	
	if Input.is_action_pressed("Down2"):
		player2.position.y += speed * delta
	if Input.is_action_pressed("Up2"):
		player2.position.y -= speed * delta
		
