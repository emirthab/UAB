extends Area

func _ready():
	connect("body_entered",self,"entered")
	
func entered(body):
	if body.name == "player":
		Globals.gameStatus = false
		var uiLose = preload("res://assets/gui/lose.tscn").instance()
		get_tree().current_scene.get_node("AnimationPlayer").stop()
		get_tree().current_scene.add_child(uiLose)
