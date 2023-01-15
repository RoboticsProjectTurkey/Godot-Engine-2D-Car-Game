extends Area2D

onready var main = get_tree().get_current_scene()

func _on_money_object_body_entered(body):
	if body.name == "Car":
		main.Cash += 1
		main.get_node("HUD").Upgrade_Cash(main.Cash)
		queue_free()
