extends RigidBody

func _ready():
	$Area.connect("body_entered",self,"_on_Body_entered")
	$model/AnimationPlayer.get_animation("courier|mixamocom|Layer0").loop = true
	$model/AnimationPlayer.playback_speed = 2
	$model/AnimationPlayer.play("courier|mixamocom|Layer0")


func _on_Body_entered(body):
	if body.name == "player":
		Globals.gameStatus = false
		var uiLose = preload("res://assets/gui/lose.tscn").instance()
		get_tree().current_scene.get_node("AnimationPlayer").stop()
		get_tree().current_scene.add_child(uiLose)
