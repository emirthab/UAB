extends Node

var gameStatus = true
var coin = 0

func _ready():
	playSceneAnim()

func playSceneAnim():
	get_tree().current_scene.get_node("AnimationPlayer").play("anim")
