extends VehicleBody

var velocityMax = 1000
var accelSpeed = 1

var status = 0

func _physics_process(delta):
	if Globals.gameStatus:
		if Input.is_action_pressed("move"):
			set_engine_force(-400)
			if status == 1:
				status = 0
				$astronaut/AnimationPlayer.play_backwards("metarigAction")

		else:
			set_engine_force(350)
			if status == 0:
				status = 1
				$astronaut/AnimationPlayer.play("metarigAction")
