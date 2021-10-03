extends Node


var timer = Timer.new()

func _on_Replay_pressed():
	$AudioStreamPlayer.playing = true
	$container.visible = false

var audio = AudioStreamPlayer.new()
var sfx = preload("res://assets/sounds/vfx/lose.ogg")
var sfx2 = preload("res://assets/sounds/vfx/win.ogg")

func _ready():
	InGame.visible = false
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
	InGame.visible = true
	$astronaut.visible = false
	$container2.visible = false
	$TextureRect.visible = false
	$AudioStreamPlayer.playing = true

func _on_AudioStreamPlayer_finished():
	queue_free()

func _on_AudioStreamPlayer_finished_2():
	get_tree().reload_current_scene()
	Globals.gameStatus = true


func _on_press_resume_inGame():
	$AudioStreamPlayer.play()
	Globals.gameStatus = true
	get_tree().paused = false
	InGame.get_node("stop").visible = false
	InGame.get_node("pause").visible = true

func _on_press_replay_inGame():
	InGame.visible = true
	get_tree().paused = false
	$AudioStreamPlayer.playing = true
	$container.visible = false
	$astronaut.visible = false
	get_tree().reload_current_scene()
	Globals.gameStatus = true

func _on_Button_pause_pressed():
	$stop/AudioStreamPlayer.play()
	$pause.visible = false
	Globals.gameStatus = true
	get_tree().paused = true
	get_node("stop").visible = true
