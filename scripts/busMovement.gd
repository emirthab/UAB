extends VehicleBody

var velocityMax = 1000
var accelSpeed = 1

func _physics_process(delta):
	if Globals.gameStatus:
		if Input.is_action_pressed("move"):
			set_engine_force(-400)

		else:
			set_engine_force(350)
