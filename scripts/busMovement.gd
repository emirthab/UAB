extends VehicleBody

var velocityMax = 1000
var accelSpeed = 1

func _physics_process(delta):
	if Input.is_action_pressed("move"):
		if linear_velocity.x > 0:
			set_engine_force(-500)
		else:
			set_engine_force(0)

	else:
		if linear_velocity.x < 300:
			add_central_force(Vector3(1,0,0))
			set_engine_force(750)
