extends Area

func _ready():
	$AnimationPlayer.play("idle")


func _on_coin_body_entered(body):
	Globals.coin += 1
