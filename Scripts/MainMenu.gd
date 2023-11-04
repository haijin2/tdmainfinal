extends Control


onready var Control = $Audio

func toggle():
	visible =!visible
	get_tree().paused = visible


func _on_Start_pressed():
	get_tree().change_scene("res://Scenes/World.tscn")

func _on_Exit_pressed():
	get_tree().quit()

func _on_Options_pressed():
	get_tree().change_scene("res://Scenes/Control.tscn")

