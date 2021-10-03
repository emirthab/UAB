extends Area

func _ready():
	$AnimationPlayer.play("idle")
	$AnimationPlayer.connect("animation_finished",self,"animEnd")


func _on_coin_body_entered(body):
	Globals.coin += 1
	$AnimationPlayer.play("collect")
	$AudioStreamPlayer.play()
	InGame.get_node("bar/coin/AnimationPlayer").play("anim")
	InGame.get_node("bar/Label").text = str(Globals.coin)

func animEnd(anim):
	if anim == "collect":
		queue_free()
