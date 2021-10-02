extends Node


var timer = Timer.new()

func _on_Replay_pressed():
	get_tree().reload_current_scene()
	Globals.gameStatus = true
