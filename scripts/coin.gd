extends Area

func _ready():
	$AnimationPlayer.play("idle")
	$AnimationPlayer.connect("animation_finished",self,"animEnd")


func _on_coin_body_entered(body):
	Globals.coin += 1
	$AnimationPlayer.play("collect")
	$AudioStreamPlayer.play()

func animEnd(anim):
	if anim == "collect":
		queue_free()
