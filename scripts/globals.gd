extends Node

var gameStatus = false
var coin = 0

func _ready():
	var beforeGame = preload("res://assets/gui/beforeGame.tscn").instance()
	if get_tree().current_scene.name == "binbin":
		get_tree().current_scene.add_child(beforeGame)
