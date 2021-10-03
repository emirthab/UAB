extends RigidBody

func _ready():
	$Area.connect("body_entered",self,"_on_Body_entered")
	var animName = $model/AnimationPlayer.get_animation_list()[0]
	$model/AnimationPlayer.get_animation(animName).loop = true
	$model/AnimationPlayer.play(animName)


