extends Area



func _ready():
	connect("body_entered",self,"entered")

func entered(body):
	if body.name == "player":
		var a = preload("res://assets/gui/victory.tscn").instance()
		get_tree().current_scene.add_child(a)

