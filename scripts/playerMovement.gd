extends VehicleBody

var velocityMax = 20
var power = 150
var accelSpeed = 100


#func _ready():
#	firstRot = rotation.y

func _physics_process(delta):
	if Input.is_action_pressed("move"):
		engine_force = lerp(engine_force,-power,accelSpeed * delta)
	else:
		engine_force = lerp(engine_force,power,accelSpeed * delta)



