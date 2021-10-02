extends Node


func _ready():
	var animName = $model/AnimationPlayer.get_animation_list()[0]
	$model/AnimationPlayer.get_animation(animName).loop = true
	$model/AnimationPlayer.play(animName)
