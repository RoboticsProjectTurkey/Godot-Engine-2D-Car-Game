extends Node2D
var Cash = 0
var Fuel = 1000

func _ready():
	$HUD.Upgrade_Cash(Cash)
	$HUD.Upgrade_Fuel(Fuel)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
