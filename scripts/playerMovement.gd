extends VehicleBody

var velocityMax = 30
var accelSpeed = 60

var status = 0

func _physics_process(delta):
	if Globals.gameStatus:
		if Input.is_action_pressed("move"):
			linear_velocity.z -= accelSpeed * delta
			if status == 1:
				status = 0
				$astronaut/AnimationPlayer.play_backwards("metarigAction")

		else:
			linear_velocity.z += accelSpeed * delta
			if status == 0:
				status = 1
				$astronaut/AnimationPlayer.play("metarigAction")
		linear_velocity.z = clamp(linear_velocity.z,0,velocityMax)
