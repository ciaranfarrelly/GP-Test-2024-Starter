extends CanvasLayer

func _on_slider_value_changed(value):
	var strvalue = value.to_string()
	$Value.text = strvalue
	pass
