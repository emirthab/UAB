extends VehicleBody

var velocityMax = 1000
var accelSpeed = 1

func _physics_process(delta):
	print(linear_velocity)
	if Input.is_action_pressed("move"):
		if linear_velocity.z < 0:
			set_engine_force(-100)
			
		else:
			set_engine_force(0)

	else:
		if linear_velocity.z >= 0:
			add_central_force(Vector3(0,0,-2))
			set_engine_force(450)
