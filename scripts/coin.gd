extends Area

func _ready():
	pass # Replace with function body.


func _on_coin_body_entered(body):
	Globals.coin += 1
