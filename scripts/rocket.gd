extends RigidBody

var velocityMax = 1000
var accelSpeed = 1

func _physics_process(delta):
	print(linear_velocity)
	if Input.is_action_pressed("move"):
		if linear_velocity.x > 0:
			add_central_force(Vector3(-20,0,0))

	else:
		if linear_velocity.x < 200:
			add_central_force(Vector3(20,0,0))
