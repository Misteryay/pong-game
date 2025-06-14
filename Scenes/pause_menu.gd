extends VBoxContainer


func _on_exit_button_pressed() -> void:
	var main_menu = load("res://Scenes/MainMenu.tscn")
	var main_instance = main_menu.instantiate()
	get_tree().get_root().add_child(main_instance)
	var current_scene_node = $".."
	current_scene_node.queue_free()



func _on_resume_button_pressed() -> void:
	hide()
