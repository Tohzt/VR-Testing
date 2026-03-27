extends XRController3D


func _process(_delta: float) -> void:
	visible = get_is_active()
