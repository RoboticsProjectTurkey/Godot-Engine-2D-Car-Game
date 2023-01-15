extends Area2D

onready var main = get_tree().get_current_scene()


func _on_fueltank_object_body_entered(body):
	if body.name == "Car":
		main.Fuel = 1000
		main.get_node("HUD").Upgrade_Fuel(main.Fuel)
		queue_free()
