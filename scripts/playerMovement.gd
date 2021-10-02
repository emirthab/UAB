extends VehicleBody

var velocityMax = 20
var power = 250
var accelSpeed = 100

var status = 0
#func _ready():
#	firstRot = rotation.y

func _physics_process(delta):
	if Input.is_action_pressed("move"):
		if status == 1:
			status = 0
			$astronaut/AnimationPlayer.play_backwards("metarigAction")
		brake = lerp(engine_force,0,accelSpeed * delta * 2)
	else:
		if status == 0:
			status = 1
			$astronaut/AnimationPlayer.play("metarigAction")
		engine_force = lerp(engine_force,power,accelSpeed * delta)
		brake = 0
