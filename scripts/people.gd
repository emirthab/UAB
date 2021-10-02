extends Node

func _ready():
	$model/AnimationPlayer.play("courier|mixamocom|Layer0")
	$model/AnimationPlayer.get_animation("courier|mixamocom|Layer0").loop = true




func _on_Area_body_entered(body):
	if body.name == "player":
		get_tree().current_scene.get_node("AnimationPlayer").stop()
		print("deneme")
