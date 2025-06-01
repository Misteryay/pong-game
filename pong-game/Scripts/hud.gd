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
