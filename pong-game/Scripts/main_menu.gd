extends Control

@onready var play_box: VBoxContainer = $PlayBox
@onready var main_box: VBoxContainer = $MainBox



func _ready() -> void:
	play_box.hide()


func _on_play_pressed() -> void:
	main_box.hide()
	play_box.show()


func _on_back_pressed() -> void:
	main_box.show()
	play_box.hide()


func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_player_pressed() -> void:
	pass # Replace with function body.
