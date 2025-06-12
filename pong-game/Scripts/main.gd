extends Sprite2D


@onready var input_handler: Node = $InputHandler


var isMultiplayer : bool

@onready var score: HBoxContainer = $Score

func _ready() -> void:
	start_new_match()
		
func _physics_process(delta: float) -> void:
	input_handler.player1_input(delta)
	if isMultiplayer:
		input_handler.player2_input(delta)
	else:
		input_handler.computer_movement(delta)
	


func start_new_match() -> void:
	set_assets_position()
	$Ball.new_match()
	$InputHandler.isMultiplayer = isMultiplayer
	
func set_assets_position() -> void:
	var screen_size = get_viewport().size
	var left_pallet = $Pallet
	var right_pallet = $"Pallet2"
	var ball = $Ball
	var score : HBoxContainer= $Score
	
	left_pallet.position.x = 30
	left_pallet.position.y = screen_size.y / 2
	
	right_pallet.position.x = screen_size.x - 30
	right_pallet.position.y = screen_size.y / 2

	ball.position = screen_size / 2
	
	score.position.x = (screen_size.x / 2) - 90
	score.position.y = 20
