extends CanvasLayer

@export var item:PackedScene
@export var spawn:Node2D


func _on_slider_value_changed(value):
	$Value.text = str(value)
	pass


func _on_start_button_down():
	var count = $Slider.value
	for i in range(count):
		var brick = item.instantiate()
		spawn.global_position.x = spawn.global_position.x + ((2 * PI / count) * i)
		brick.global_position = spawn.global_position
		

		get_tree().root.add_child(brick)
