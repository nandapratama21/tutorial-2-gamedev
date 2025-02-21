extends Area2D

signal level_completed

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Reached objective!")
		emit_signal("level_completed")
