extends RigidBody

var audio = AudioStreamPlayer.new()
var sfx = preload("res://assets/sounds/vfx/duba devrilme.ogg")

func _ready():
	connect("body_entered",self,"body_enter")
	sfx.set_loop(false)
	audio.playing = false
	audio.stream = sfx
	add_child(audio)

func body_enter(body):
	if get_viewport().get_camera().global_transform.origin.distance_to(global_transform.origin) <= 20:
		audio.playing = true
	
