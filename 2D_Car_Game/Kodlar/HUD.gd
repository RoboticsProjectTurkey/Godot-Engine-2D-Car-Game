extends CanvasLayer
func _ready():
	pass # Replace with function body.


#func _process(delta):
#	pass

func Upgrade_Cash(var cash):
	$Cash_Label.text = str(cash)

func Upgrade_Fuel(var fuel):
	$fuel_bar.value = fuel
