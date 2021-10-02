extends RigidBody

func _ready():
	$Area.connect("body_entered",self,"_on_Body_entered")
	var animName = $model/AnimationPlayer.get_animation_list()[0]
	$model/AnimationPlayer.get_animation(str(animName)).loop = true
	$model/AnimationPlayer.playback_speed = 2
	$model/AnimationPlayer.play(str(animName))


func _on_Body_entered(body):
	if body.name == "player":
		add_force(Vector3(0,0,0),Vector3(0,0.2,0.3))
		Globals.gameStatus = false
		var uiLose = preload("res://assets/gui/lose.tscn").instance()
		get_tree().current_scene.get_node("AnimationPlayer").stop()
		get_tree().current_scene.add_child(uiLose)
