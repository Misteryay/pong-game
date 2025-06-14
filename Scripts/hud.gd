extends Control

@onready var first_page: VBoxContainer = $FirstPage
@onready var second_page: VBoxContainer = $SecondPage


func _ready() -> void:
	second_page.hide()
	



func _on_exit_button_pressed() -> void:
	get_tree().quit()


func _on_play_button_pressed() -> void:
	first_page.hide()
	second_page.show()


func _on_back_button_pressed() -> void:
	second_page.hide()
	first_page.show()


func _on_player_button_pressed() -> void:
	change_to_main(true)

func _on_computer_button_pressed() -> void:
	change_to_main(false)

func change_to_main(ismultiplayer: bool):
	var main_scene = load("res://Scenes/main.tscn")
	var main_instance = main_scene.instantiate()
	main_instance.isMultiplayer = ismultiplayer
	get_tree().get_root().add_child(main_instance)
	queue_free()
	
	
