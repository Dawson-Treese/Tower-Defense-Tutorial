extends Node2D

	

func _load_next_scene():
	get_tree().change_scene("res://Scenes/Level.tscn")
	pass


func _on_Button_pressed():
	_load_next_scene()
