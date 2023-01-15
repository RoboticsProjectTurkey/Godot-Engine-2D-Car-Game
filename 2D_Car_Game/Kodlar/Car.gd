extends RigidBody2D

export var HIZ = 20
var input_vector
onready var main = get_tree().get_current_scene()

func _physics_process(_delta):
	input_vector = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	if input_vector == 1:
		$Sag_tekerlek.angular_velocity += HIZ
		$Sol_tekerlek.angular_velocity += HIZ
	
	elif input_vector == -1:
		$Sag_tekerlek.angular_velocity += -HIZ
		$Sol_tekerlek.angular_velocity += -HIZ
	
	if not input_vector == 0:
		main.Fuel -= 1
		main.get_node("HUD").Upgrade_Fuel(main.Fuel)
	
	#if Input.is_action_just_pressed("ui_right"):
	#	$Sag_tekerlek.angular_velocity += HIZ
	#	$Sol_tekerlek.angular_velocity += HIZ
	
	#elif Input.is_action_just_pressed("ui_left"):
	#	$Sag_tekerlek.angular_velocity += -HIZ
	#	$Sol_tekerlek.angular_velocity += -HIZ
