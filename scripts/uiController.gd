extends Node


var timer = Timer.new()

func _on_Replay_pressed():
	get_tree().reload_current_scene()
	Globals.gameStatus = true

var audio = AudioStreamPlayer.new()
var sfx = preload("res://assets/sounds/vfx/lose.ogg")
var sfx2 = preload("res://assets/sounds/vfx/win.ogg")

func _ready():
	if name == "lose":
		sfx.set_loop(false)
		audio.playing = false
		audio.stream = sfx
		add_child(audio)
		audio.play()
	elif name == "victory":
		sfx2.set_loop(false)
		audio.playing = false
		audio.stream = sfx2
		add_child(audio)
		audio.play()


func _on_Button_pressed():
	Globals.gameStatus = true
	$astronaut.visible = false
	$container2.visible = false
	$TextureRect.visible = false
	$AudioStreamPlayer.playing = true


func _on_AudioStreamPlayer_finished():
	queue_free()
