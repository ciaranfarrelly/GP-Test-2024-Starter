extends RigidBody2D

@export var explosion_scene:PackedScene 

func _on_area_entered(area):
	if area.name == "Ground":
		var explosion = explosion_scene.instantiate()
		explosion.global_position.x = 100
		explosion.global_position.y = 100
		explosion.emitting = true
		get_tree().root.add_child(explosion)
		$RigidBody2D.destroy()
pass
