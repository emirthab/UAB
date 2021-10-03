extends RigidBody

func _ready():
	$Area.connect("body_entered",self,"_on_Body_entered")
	var animName = $model/AnimationPlayer.get_animation_list()[0]
	$model/AnimationPlayer.get_animation(animName).loop = true
	$model/AnimationPlayer.play(animName)

func _on_Body_entered(body):
	if body.name == "player":
		Globals.gameStatus = false
		var uiLose = preload("res://assets/gui/lose.tscn").instance()
		get_node("AnimationPlayer").stop()
		get_tree().current_scene.add_child(uiLose)
