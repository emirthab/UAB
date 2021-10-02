extends Spatial

func _ready():
	var animName = $model/AnimationPlayer.get_animation_list()[0]
	$model/AnimationPlayer.get_animation(str(animName)).loop = true
	$model/AnimationPlayer.playback_speed = 2
	$model/AnimationPlayer.play(str(animName))
